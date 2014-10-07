# Define executable module

# Assign name to current target
set (THIS_TARGET "tool1")

# Declate type of current module as one of:
# STATIC_LIBRARY, DYNAMIC_LIBRARY, EXECUTABLE, TEST

set (THIS_TARGET_TYPE "EXECUTABLE")

# List headers and source files
set (THIS_SOURCES "tool_1.cpp")

# State dependencies
set (USE_LIBRARY1 "TRUE")
set (USE_LIBRARY2 "TRUE")

# always include these two files the end
include (${CODE_PATH}/common.cmake)
include (${CODE_PATH}/exported.cmake)
