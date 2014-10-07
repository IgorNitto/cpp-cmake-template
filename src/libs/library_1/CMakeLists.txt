# Define library module

# Assign name to current target
set (THIS_TARGET "library1")

# Declate type of current module as one of:
# STATIC_LIBRARY, DYNAMIC_LIBRARY, EXECUTABLE, TEST

set (THIS_TARGET_TYPE "STATIC_LIBRARY")

# List headers and source files
set (THIS_HEADERS "library_1.h")
set (THIS_SOURCES "library_1.cpp")

# Define include path in installation folder.
# Most likely this is always equal to target name.
set (THIS_INCLUDE_PATH "library1")

# always include these two files the end
include (${CODE_PATH}/common.cmake)
include (${CODE_PATH}/exported.cmake)
