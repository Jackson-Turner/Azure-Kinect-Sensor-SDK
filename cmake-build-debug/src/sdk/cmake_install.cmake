# Install script for directory: C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/src/sdk

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/src/sdk/libk4a.dll.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/bin/libk4a.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libk4a.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libk4a.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Users/jaxmu/AppData/Local/Programs/CLion/bin/mingw/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libk4a.dll")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/k4a/k4aTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/k4a/k4aTargets.cmake"
         "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/src/sdk/CMakeFiles/Export/6740d1eaf4f62250afdeb04ccd3d73a9/k4aTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/k4a/k4aTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/k4a/k4aTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/k4a" TYPE FILE FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/src/sdk/CMakeFiles/Export/6740d1eaf4f62250afdeb04ccd3d73a9/k4aTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/k4a" TYPE FILE FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/src/sdk/CMakeFiles/Export/6740d1eaf4f62250afdeb04ccd3d73a9/k4aTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/k4a" TYPE FILE FILES
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/src/sdk/k4aConfig.cmake"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/src/sdk/k4aConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "development" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/k4a" TYPE FILE FILES
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/include/k4a/k4a.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/include/k4a/k4a.hpp"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/include/k4a/k4atypes.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/src/sdk/include/k4a/k4aversion.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/src/sdk/include/k4a/k4a_export.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "runtime" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE OPTIONAL FILES
    )
endif()

