cmake_minimum_required (VERSION 2.6)

project (project_name)

############################################################
# Output path definition
############################################################

set (PROJECT_PATH  "${CMAKE_CURRENT_SOURCE_DIR}/..")
set (BINARY_PATH   "${PROJECT_PATH}/bin")
set (LIB_PATH      "${PROJECT_PATH}/lib")
set (INCLUDE_PATH  "${PROJECT_PATH}/include")
set (CODE_PATH     "${PROJECT_PATH}/src")
set (LIB_SOURCE_PATH  "${CODE_PATH}/libs")
set (BINARY_TEST_PATH "${BINARY_PATH}/tests")

message (STATUS "project root ${PROJECT_PATH}")

############################################################
# Platform-specficic settings
############################################################

if (NOT CMAKE_BUILD_TYPE)
  set (CMAKE_BUILD_TYPE Release)
endif ()

message (STATUS "Configured for build-type: ${CMAKE_BUILD_TYPE}")

if (UNIX)
  if (${CMAKE_CXX_COMPILER_ID} STREQUAL "GNU")
    set (CMAKE_CXX_FLAGS_DEBUG
        "${CMAKE_CXX_FLAGS_DEBUG} -fPIC --std=c++11")
    set (CMAKE_CXX_FLAGS_RELEASE
         "${CMAKE_CXX_FLAGS_RELEASE} -fPIC --std=c++11 -O3")
  elseif (${CMAKE_CXX_COMPILER_ID} STREQUAL "CLANG")
    set (CMAKE_CXX_FLAGS_DEBUG
         "${CMAKE_CXX_FLAGS_DEBUG} -fPIC --std=c++11")
    set (CMAKE_CXX_FLAGS_RELEASE
         "${CMAKE_CXX_FLAGS_RELEASE} -fPIC --std=c++11 -O3")
  endif ()   
elseif (WIN32)
  message (WARNING "No specific configuration found for Windows")
else ()
  message (WARNING "Unknown operating system: no specific configuration found") 
endif ()

############################################################
# Setup external dependencies
############################################################

include (external.cmake)

enable_testing ()

############################################################
# Libraries
############################################################

add_subdirectory (./libs/library_1)
add_subdirectory (./libs/library_2)

############################################################
# Tools
############################################################

add_subdirectory (./tools/tool_1)

############################################################
# Tests
############################################################

add_subdirectory (./tests/test_1)

