
#############################################################
# Configure 3rd party library

set (BOOST_ROOT "/home/igor/boost_1_56_0")

find_package (Boost 1.46)
if (Boost_FOUND)
  message(STATUS "Boost library version ${Boost_LIB_VERSION} found, with headers at '${Boost_INCLUDE_DIR}' and libraries at '${Boost_LIBRARY_DIRS}' for libraries: \n${Boost_LIBRARIES}")
endif ()
 