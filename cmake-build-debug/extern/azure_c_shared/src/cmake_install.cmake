# Install script for directory: C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/azure_c_shared/src/libaziotsharedutil.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/azureiot/azure_c_shared_utility" TYPE FILE FILES
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/agenttime.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/azure_base32.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/azure_base64.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/buffer_.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/constbuffer_array.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/constbuffer_array_batcher.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/connection_string_parser.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/crt_abstractions.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/constmap.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/condition.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/const_defines.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/inc/azure_c_shared_utility/consolelogger.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/doublylinkedlist.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/envvariable.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/gballoc.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/gbnetwork.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/gb_stdio.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/gb_time.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/gb_rand.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/hmac.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/hmacsha256.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/http_proxy_io.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/singlylinkedlist.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/lock.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/map.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/optimize_size.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/platform.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/refcount.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/sastoken.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/sha-private.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/shared_util_options.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/sha.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/socketio.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/srw_lock.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/stdint_ce6.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/strings.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/strings_types.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/string_token.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/string_tokenizer.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/string_tokenizer_types.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/string_utils.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/tlsio_options.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/tickcounter.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/threadapi.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/xio.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/uniqueid.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/uuid.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/urlencode.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/vector.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/vector_types.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/vector_types_internal.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/xlogging.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/constbuffer.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/tlsio.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/optionhandler.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/memory_data.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/tlsio_schannel.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./inc/azure_c_shared_utility/x509_schannel.h"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/./pal/linux/refcount_os.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/azure_c_shared_utilityTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/azure_c_shared_utilityTargets.cmake"
         "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/azure_c_shared/src/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/azure_c_shared_utilityTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/azure_c_shared_utilityTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/azure_c_shared_utilityTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/azure_c_shared/src/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/azure_c_shared_utilityTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/azure_c_shared/src/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/azure_c_shared_utilityTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/configs/azure_c_shared_utilityConfig.cmake"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/configs/azure_c_shared_utilityFunctions.cmake"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/extern/azure_c_shared/src/configs/azure_iot_build_rules.cmake"
    "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/azure_c_shared/src/azure_c_shared_utility/azure_c_shared_utilityConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/azure_c_shared/src/deps/azure-macro-utils-c/cmake_install.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/extern/azure_c_shared/src/deps/umock-c/cmake_install.cmake")

endif()

