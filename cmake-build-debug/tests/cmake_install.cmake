# Install script for directory: C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/tests

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/K4A")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Users/jaxmu/AppData/Local/Programs/CLion/bin/mingw/bin/objdump.exe")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/Calibration/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/CaptureSync/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/ColorTests/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/DepthTests/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/executables/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/ExternLibraries/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/FirmwareTests/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/global/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/latency/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/logging/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/IMUTests/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/multidevice/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/projections/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/RecordTests/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/rwlock/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/example/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/TestUtil/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/Transformation/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/throughput/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/UnitTests/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/Utilities/cmake_install.cmake")

endif()

