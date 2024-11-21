// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

#include <iostream>
#include <vector>

#include "C:\Program Files\NDI\NDI 6 SDK\Include\Processing.NDI.Lib.h"
#include "k4adepthpixelcolorizer.h"
#include "k4apixel.h"
#include "k4astaticimageproperties.h"
#include "texture.h"
#include "viewerwindow.h"

using namespace viewer;

void ColorizeDepthImage(const k4a::image &depthImage,
                        DepthPixelVisualizationFunction visualizationFn,
                        std::pair<uint16_t, uint16_t> expectedValueRange,
                        std::vector<BgraPixel> *buffer);

int main()
{
    if (!NDIlib_initialize())
    {
        std::cerr << "Failed to initialize NDI library." << std::endl;
        return 1;
    }
    NDIlib_send_create_t send_create;
    send_create.p_ndi_name = "Camera 2 Depth";
    send_create.p_groups = NULL;
    send_create.clock_video = true;

    NDIlib_send_instance_t pSend = NDIlib_send_create(&send_create);

    NDIlib_send_create_t NDI_send_create;
    NDI_send_create.p_ndi_name = "Camera 1 Color";
    NDI_send_create.p_groups = NULL;
    NDI_send_create.clock_video = true;
    NDIlib_send_instance_t cSend = NDIlib_send_create(&NDI_send_create);

    if (!pSend)
    {
        std::cout << "Failed to create NDI send instance." << std::endl;
        return 1;
    }
    if (!cSend)
    {
        std::cout << "Failed to create NDI send instance." << std::endl;
        return 1;
    }
    try
    {
        // Check for devices
        //
        const uint32_t deviceCount = k4a::device::get_installed_count();
        if (deviceCount == 0)
        {
            throw std::runtime_error("No Azure Kinect devices detected!");
        }

        // Start the device
        //
        k4a_device_configuration_t config = K4A_DEVICE_CONFIG_INIT_DISABLE_ALL;
        config.camera_fps = K4A_FRAMES_PER_SECOND_30;
        config.depth_mode = K4A_DEPTH_MODE_WFOV_2X2BINNED;
        config.color_format = K4A_IMAGE_FORMAT_COLOR_BGRA32;
        config.color_resolution = K4A_COLOR_RESOLUTION_720P;

        // This means that we'll only get captures that have both color and
        // depth images, so we don't need to check if the capture contains
        // a particular type of image.
        //
        config.synchronized_images_only = true;

        std::cout << "Started opening K4A device..." << std::endl;

        k4a::device dev = k4a::device::open(K4A_DEVICE_DEFAULT);
        dev.start_cameras(&config);

        std::cout << "Finished opening K4A device." << std::endl;

        // Create the viewer window.
        //
        ViewerWindow &window = ViewerWindow::Instance();
        window.Initialize("Simple Azure Kinect Viewer", 1440, 900);

        // Textures we can give to OpenGL / the viewer window to render.
        //
        Texture depthTexture = window.CreateTexture(GetDepthDimensions(config.depth_mode));
        Texture colorTexture = window.CreateTexture(GetColorDimensions(config.color_resolution));

        // A buffer containing a BGRA color representation of the depth image.
        // This is what we'll end up giving to depthTexture as an image source.
        // We don't need a similar buffer for the color image because the color
        // image already comes to us in BGRA32 format.
        //
        std::vector<BgraPixel> depthTextureBuffer;

        // viewer.BeginFrame() will start returning false when the user closes the window.
        //
        while (window.BeginFrame())
        {
            // Poll the device for new image data.
            //
            // We set the timeout to 0 so we don't block if there isn't an available frame.
            //
            // This works here because we're doing the work on the same thread that we're
            // using for the UI, and the ViewerWindow class caps the framerate at the
            // display's refresh rate (the EndFrame() call blocks on the display's sync).
            //
            // If we don't have new image data, we'll just reuse the textures we generated
            // from the last time we got a capture.
            //
            k4a::capture capture;
            if (dev.get_capture(&capture, std::chrono::milliseconds(0)))
            {

                const k4a::image depthImage = capture.get_depth_image();

                const k4a::image colorImage = capture.get_color_image();

                ColorizeDepthImage(depthImage,
                                   K4ADepthPixelColorizer::ColorizeBlueToRed,
                                   GetDepthModeRange(config.depth_mode),
                                   &depthTextureBuffer);

                depthTexture.Update(&depthTextureBuffer[0]);

                // Since we're using BGRA32 mode, we can just upload the color image directly.
                // If you want to use one of the other modes, you have to do the conversion
                // yourself.
                //
                colorTexture.Update(reinterpret_cast<const BgraPixel *>(colorImage.get_buffer()));
                NDIlib_video_frame_v2_t NDI_color_frame;
                NDI_color_frame.xres = colorTexture.Width();
                NDI_color_frame.yres = colorTexture.Height();
                NDI_color_frame.FourCC = NDIlib_FourCC_type_BGRA;
                NDI_color_frame.frame_rate_N = 30000;
                NDI_color_frame.frame_rate_D = 1001;
                NDI_color_frame.picture_aspect_ratio = 16.0f / 9.0f;
                NDI_color_frame.frame_format_type = NDIlib_frame_format_type_progressive;
                NDI_color_frame.timecode = NDIlib_send_timecode_synthesize;
                NDI_color_frame.p_data = (uint8_t *)(colorTexture.GetBuffer());
                NDIlib_send_send_video_v2(cSend, &NDI_color_frame);
            }

            const ImVec2 windowSize(window.GetWidth() / 2.f, static_cast<float>(window.GetHeight()));

            NDIlib_video_frame_v2_t NDI_video_frame;

            NDI_video_frame.xres = depthTexture.Width();

            NDI_video_frame.yres = depthTexture.Height();

            NDI_video_frame.FourCC = NDIlib_FourCC_type_BGRA;
            NDI_video_frame.frame_rate_N = 30000;
            NDI_video_frame.frame_rate_D = 1001;
            NDI_video_frame.picture_aspect_ratio = 16.0f / 9.0f;
            NDI_video_frame.frame_format_type = NDIlib_frame_format_type_progressive;
            NDI_video_frame.timecode = NDIlib_send_timecode_synthesize;
            NDI_video_frame.p_data = (uint8_t *)(depthTexture.GetBuffer());
            NDIlib_send_send_video_v2(pSend, &NDI_video_frame);

            window.ShowTexture("Depth", depthTexture, ImVec2(0.f, 0.f), windowSize);
            window.ShowTexture("Color", colorTexture, ImVec2(window.GetWidth() / 2.f, 0.f), windowSize);

            // This will tell ImGui/OpenGL to render the frame, and will block until the next vsync.
            //
            window.EndFrame();
        }
    }
    catch (const std::exception &e)
    {
        std::cerr << e.what() << std::endl;
        std::cerr << "Press [enter] to exit." << std::endl;
        std::cin.get();
        return 1;
    }
    return 0;
}

// Given a depth image, output a BGRA-formatted color image into buffer, using
// expectedValueRange to define what min/max values the depth image should have.
// Low values are blue, high values are red.
//
void ColorizeDepthImage(const k4a::image &depthImage,
                        DepthPixelVisualizationFunction visualizationFn,
                        std::pair<uint16_t, uint16_t> expectedValueRange,
                        std::vector<BgraPixel> *buffer)
{
    // This function assumes that the image is made of depth pixels (i.e. uint16_t's),
    // which is only true for IR/depth images.
    //
    const k4a_image_format_t imageFormat = depthImage.get_format();
    if (imageFormat != K4A_IMAGE_FORMAT_DEPTH16 && imageFormat != K4A_IMAGE_FORMAT_IR16)

    {
        throw std::logic_error("Attempted to colorize a non-depth image!");
    }

    const int width = depthImage.get_width_pixels();
    const int height = depthImage.get_height_pixels();

    buffer->resize(static_cast<size_t>(width * height));

    const uint16_t *depthData = reinterpret_cast<const uint16_t *>(depthImage.get_buffer());
    for (int h = 0; h < height; ++h)
    {
        for (int w = 0; w < width; ++w)
        {
            const size_t currentPixel = static_cast<size_t>(h * width + w);
            (*buffer)[currentPixel] = visualizationFn(depthData[currentPixel],
                                                      expectedValueRange.first,
                                                      expectedValueRange.second);
        }
    }
}