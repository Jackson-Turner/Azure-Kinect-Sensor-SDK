if(EXISTS "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/IMUTests/UnitTest/imu_ut[1]_tests.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/IMUTests/UnitTest/imu_ut[1]_tests.cmake")
else()
  add_test(imu_ut_NOT_BUILT imu_ut_NOT_BUILT)
endif()