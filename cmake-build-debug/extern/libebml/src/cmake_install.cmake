# Install script for directory: C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/libebml/src/libebml.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ebml" TYPE FILE FILES
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/Debug.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlBinary.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlConfig.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlContexts.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlCrc32.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlDate.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlDummy.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlElement.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlEndian.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlFloat.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlHead.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlId.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlMaster.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlSInteger.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlStream.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlString.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlSubHead.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlTypes.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlUInteger.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlUnicodeString.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlVersion.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/EbmlVoid.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/IOCallback.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/MemIOCallback.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/MemReadIOCallback.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/SafeReadIOCallback.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/StdIOCallback.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/src/platform/win32/WinIOCallback.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ebml/c" TYPE FILE FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/ebml/c/libebml_t.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/libebml/src/libebml.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/EbmlTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/EbmlTargets.cmake"
         "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/libebml/src/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/EbmlTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/EbmlTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/EbmlTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/libebml/src/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/EbmlTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/libebml/src/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/EbmlTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/libebml/src/EbmlConfig.cmake"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/libebml/src/EbmlConfigVersion.cmake"
    )
endif()

