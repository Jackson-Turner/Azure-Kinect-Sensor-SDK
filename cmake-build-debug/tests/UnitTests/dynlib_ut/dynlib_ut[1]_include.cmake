if(EXISTS "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/UnitTests/dynlib_ut/dynlib_ut[1]_tests.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/UnitTests/dynlib_ut/dynlib_ut[1]_tests.cmake")
else()
  add_test(dynlib_ut_NOT_BUILT dynlib_ut_NOT_BUILT)
endif()
