if(EXISTS "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/Calibration/calibration_ut[1]_tests.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/Calibration/calibration_ut[1]_tests.cmake")
else()
  add_test(calibration_ut_NOT_BUILT calibration_ut_NOT_BUILT)
endif()
