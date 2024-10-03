#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "k4a::k4a" for configuration "Debug"
set_property(TARGET k4a::k4a APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(k4a::k4a PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/libk4a.dll.a"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/libk4a.dll"
  )

list(APPEND _cmake_import_check_targets k4a::k4a )
list(APPEND _cmake_import_check_files_for_k4a::k4a "${_IMPORT_PREFIX}/lib/libk4a.dll.a" "${_IMPORT_PREFIX}/bin/libk4a.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
