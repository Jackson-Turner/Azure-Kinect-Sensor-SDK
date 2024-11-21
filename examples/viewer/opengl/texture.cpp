// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.

#include "texture.h"

#include "viewerutil.h"
#include "D:\Azure camera SDK\Azure-Kinect-Sensor-SDK\extern\imgui\src\examples\libs\gl3w\GL\gl3w.h"

namespace viewer
{

Texture::Texture(int width, int height)
    : m_width(width), m_height(height)
{
    // Allocate space for the buffer
    m_buffer.resize(static_cast<size_t>(width * height));
    // OpenGL texture creation code here...
    glGenTextures(1, &m_name);
    glBindTexture(GL_TEXTURE_2D, m_name);

    // Set texture parameters
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    // Allocate texture storage
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, m_width, m_height, 0, GL_BGRA, GL_UNSIGNED_BYTE, nullptr);

    glBindTexture(GL_TEXTURE_2D, 0);


}

void Texture::Update(const BgraPixel *data)
{
    // Update the internal buffer
    std::copy(data, data + (m_width * m_height), m_buffer.begin());
    // OpenGL texture update code here...
    glBindTexture(GL_TEXTURE_2D, m_name);
    glTexSubImage2D(GL_TEXTURE_2D, 0, 0, 0, m_width, m_height, GL_BGRA, GL_UNSIGNED_BYTE, data);
    glBindTexture(GL_TEXTURE_2D, 0);

}

const BgraPixel* Texture::GetBuffer() const
{
    return m_buffer.data();
}

Texture::~Texture()
{
    DeleteTexture();
}

void Texture::DeleteTexture()
{
    if (m_name != InvalidTextureName)
    {
        // OpenGL texture deletion code here...
        glDeleteTextures(1, &m_name);

        m_name = InvalidTextureName;
    }
}

Texture::Texture(Texture &&other)
    : m_name(other.m_name), m_width(other.m_width), m_height(other.m_height), m_buffer(std::move(other.m_buffer))
{
    other.m_name = InvalidTextureName;
    other.m_width = 0;
    other.m_height = 0;
}

Texture &Texture::operator=(Texture &&other)
{
    if (this != &other)
    {
        DeleteTexture();
        m_name = other.m_name;
        m_width = other.m_width;
        m_height = other.m_height;
        m_buffer = std::move(other.m_buffer);
        other.m_name = InvalidTextureName;
        other.m_width = 0;
        other.m_height = 0;
    }
    return *this;
}

} // namespace viewer