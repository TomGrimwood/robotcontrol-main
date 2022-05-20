#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "k4a::k4arecord" for configuration "RelWithDebInfo"
set_property(TARGET k4a::k4arecord APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(k4a::k4arecord PROPERTIES
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libk4arecord.so.1.2.0"
  IMPORTED_SONAME_RELWITHDEBINFO "libk4arecord.so.1.2"
  )

list(APPEND _IMPORT_CHECK_TARGETS k4a::k4arecord )
list(APPEND _IMPORT_CHECK_FILES_FOR_k4a::k4arecord "${_IMPORT_PREFIX}/lib/x86_64-linux-gnu/libk4arecord.so.1.2.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
