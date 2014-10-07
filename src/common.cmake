
#############################################################
# Update for every internal library

macro(install_files FILE_LIST DESTINATION)
  foreach(FILE ${FILE_LIST})
    install(FILES "${FILE}"
            DESTINATION "${INCLUDE_PATH}/${DESTINATION}")
  endforeach(FILE)
endmacro(install_files)

if (${THIS_TARGET_TYPE} STREQUAL "EXECUTABLE") 
  add_executable (${THIS_TARGET} ${THIS_SOURCES})
  install (TARGETS ${THIS_TARGET} DESTINATION "${BINARY_PATH}")
endif ()

if (${THIS_TARGET_TYPE} STREQUAL "TEST") 
  add_executable (${THIS_TARGET} ${THIS_SOURCES})
  install (TARGETS ${THIS_TARGET} DESTINATION "${BINARY_TEST_PATH}")
  add_test (TEST_${THIS_TARGET} ${THIS_TARGET})
endif ()

if (${THIS_TARGET_TYPE} STREQUAL "STATIC_LIBRARY") 
  message (STATUS "adding static library ${THIS_TARGET}") 
  add_library (${THIS_TARGET} STATIC ${THIS_SOURCES})
  install (TARGETS ${THIS_TARGET} DESTINATION "${LIB_PATH}")
  install_files (${THIS_HEADERS} "${THIS_INCLUDE_PATH}")
endif ()

if (${THIS_TARGET_TYPE} STREQUAL "DYNAMIC_LIBRARY") 
  message (STATUS "adding dynamic library ${THIS_TARGET}") 
  add_library (${THIS_TARGET} DYNAMIC ${THIS_SOURCES})
  install (TARGETS ${THIS_TARGET} DESTINATION "${LIB_PATH}")
  install_files (${THIS_HEADERS} "${THIS_INCLUDE_PATH}")
endif ()

#############################################################
