#include <iostream>
#include <vector>
#include <k4a/k4a.hpp>
#include <Processing.NDI.Lib.h>
#include <chrono>
#include <cstdint>

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
    NDIlib_send_instance_t pNDI_send = NDIlib_send_create();
    if (!pNDI_send) {
        std::cerr << "Failed to create NDI send instance." << std::endl;
        return 1;
    }

    try {
        const uint32_t deviceCount = k4a::device::get_installed_count();
        if (deviceCount == 0) {
            throw std::runtime_error("No Azure Kinect devices detected!");
        }

        k4a_device_configuration_t config = K4A_DEVICE_CONFIG_INIT_DISABLE_ALL;
        config.camera_fps = K4A_FRAMES_PER_SECOND_30;
        config.depth_mode = K4A_DEPTH_MODE_WFOV_2X2BINNED;
        config.color_format = K4A_IMAGE_FORMAT_COLOR_BGRA32;
        config.color_resolution = K4A_COLOR_RESOLUTION_720P;
        config.synchronized_images_only = true;

        std::cout << "Started opening K4A device..." << std::endl;

        k4a::device device = k4a::device::open(K4A_DEVICE_DEFAULT);
        device.start_cameras(&config);

        std::cout << "Finished opening K4A device." << std::endl;

        ViewerWindow &window = ViewerWindow::Instance();
        window.Initialize("Simple Azure Kinect Viewer", 1440, 900);

        Texture depthTexture = window.CreateTexture(GetDepthDimensions(config.depth_mode));
        Texture colorTexture = window.CreateTexture(GetColorDimensions(config.color_resolution));

        std::vector<BgraPixel> depthTextureBuffer;

        while (window.BeginFrame()) {
            k4a::capture capture;
            if (device.get_capture(&capture, std::chrono::milliseconds(0))) {
                const k4a::image depthImage = capture.get_depth_image();
                const k4a::image colorImage = capture.get_color_image();

                ColorizeDepthImage(depthImage,
                                   K4ADepthPixelColorizer::ColorizeBlueToRed,
                                   GetDepthModeRange(config.depth_mode),
                                   &depthTextureBuffer);
                depthTexture.Update(&depthTextureBuffer[0]);

                colorTexture.Update(reinterpret_cast<const BgraPixel *>(colorImage.get_buffer()));

                NDIlib_video_frame_v2_t NDI_video_frame;
                NDI_video_frame.xres = depthTexture.Width();
                NDI_video_frame.yres = depthTexture.Height();
                NDI_video_frame.FourCC = NDIlib_FourCC_type_BGRA;
                NDI_video_frame.frame_rate_N = 30000;
                NDI_video_frame.frame_rate_D = 1001;
                NDI_video_frame.picture_aspect_ratio = 16.0f / 9.0f;
                NDI_video_frame.frame_format_type = NDIlib_frame_format_type_progressive;
                NDI_video_frame.timecode = NDIlib_send_timecode_synthesize;
                NDI_video_frame.p_data = reinterpret_cast<uint8_t*>(depthTexture.GetBuffer());

                NDIlib_send_send_video_v2(pNDI_send, &NDI_video_frame);
            }

            window.EndFrame();
        }
    } catch (const std::exception &e) {
        std::cerr << e.what() << std::endl;
        std::cerr << "Press [enter] to exit." << std::endl;
        std::cin.get();
        return 1;
    }

    NDIlib_send_destroy(pNDI_send);
    NDIlib_destroy();
    return 0;
}

void ColorizeDepthImage(const k4a::image &depthImage,
                        DepthPixelVisualizationFunction visualizationFn,
                        std::pair<uint16_t, uint16_t> expectedValueRange,
                        std::vector<BgraPixel> *buffer)
{
    const k4a_image_format_t imageFormat = depthImage.get_format();
    if (imageFormat != K4A_IMAGE_FORMAT_DEPTH16 && imageFormat != K4A_IMAGE_FORMAT_IR16) {
        throw std::logic_error("Attempted to colorize a non-depth image!");
    }

    const int width = depthImage.get_width_pixels();
    const int height = depthImage.get_height_pixels();

    buffer->resize(static_cast<size_t>(width * height));

    const uint16_t *depthData = reinterpret_cast<const uint16_t *>(depthImage.get_buffer());
    for (int h = 0; h < height; ++h) {
        for (int w = 0; w < width; ++w) {
            const size_t currentPixel = static_cast<size_t>(h * width + w);
            (*buffer)[currentPixel] = visualizationFn(depthData[currentPixel],
                                                      expectedValueRange.first,
                                                      expectedValueRange.second);
        }
    }
}