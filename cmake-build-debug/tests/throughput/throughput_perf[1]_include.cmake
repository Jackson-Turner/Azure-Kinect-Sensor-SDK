if(EXISTS "C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/throughput/throughput_perf[1]_tests.cmake")
  include("C:/Users/jaxmu/OneDrive/Documents/Github/personal/Azure-Kinect-Sensor-SDK/cmake-build-debug/tests/throughput/throughput_perf[1]_tests.cmake")
else()
  add_test(throughput_perf_NOT_BUILT throughput_perf_NOT_BUILT)
endif()
