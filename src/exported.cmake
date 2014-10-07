
#############################################################
# Declare dependencies on this project's libraries

if (USE_LIBRARY1 STREQUAL "TRUE")
  if (NOT USED_LIBRARY1)
    set (USED_LIBRARY1 "TRUE")
    include_directories ("${LIB_SOURCE_PATH}/library_1")
    link_directories ("${LIB_SOURCE_PATH}/library_1")
    target_link_libraries (${THIS_TARGET} library1)
  endif ()
endif ()

if (USE_LIBRARY2 STREQUAL "TRUE")
  if (NOT USED_LIBRARY2)
    set (USED_LIBRARY2 "TRUE")
    include_directories ("${LIB_SOURCE_PATH}/library_2")
    link_directories ("${LIB_SOURCE_PATH}/library_2")
    target_link_libraries (${THIS_TARGET} library2)
  endif ()
endif ()

# Add 3rd-party libraries
if (USE_BOOST STREQUAL "TRUE")
  if (NOT USED_BOOST)
    set (USED_BOOST "TRUE")
    include_directories (${Boost_INCLUDE_DIRS})
    link_directories (${Boost_LIBRARY_DIRS})
  endif ()
endif ()

#############################################################

