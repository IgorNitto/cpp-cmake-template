# Define test module

# Assign name to current target
set (THIS_TARGET "test1")

# Declate type of current module as one of:
# STATIC_LIBRARY, DYNAMIC_LIBRARY, EXECUTABLE, TEST

set (THIS_TARGET_TYPE "TEST")

# List headers and source files
set (THIS_SOURCES "test_1.cpp")

# State dependencies
set (USE_LIBRARY1 "TRUE")

# always include these two files the end
include (${CODE_PATH}/common.cmake)
include (${CODE_PATH}/exported.cmake)
