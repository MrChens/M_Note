FIND_PATH(HELLO_INCLUDE_DIR hello.h /usr/include/hello /usr/local/include/hello "${PROJECT_SOURCE_DIR}/../lesson3/build.lesson3/output/include/hello")
FIND_LIBRARY(HELLO_LIBRARY NAMES hello PATHS /usr/lib /usr/local/lib "${PROJECT_SOURCE_DIR}/../lesson3/build.lesson3/output/lib")
IF (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)
	SET(HELLO_FOUND TRUE)
ENDIF (HELLO_INCLUDE_DIR AND HELLO_LIBRARY)

IF (HELLO_FOUND)
	IF (NOT HELLO_FIND_QUIETLY)
		MESSAGE(STATUS "Found Hello: ${HELLO_INCLUDE_DIR} ${HELLO_LIBRARY}")
	ENDIF (NOT HELLO_FIND_QUIETLY)
ELSE (HELLO_FOUND)
	IF (HELLO_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could not find hello library")
	ENDIF (HELLO_FIND_REQUIRED)
ENDIF (HELLO_FOUND)

# HELLO_FIND_QUIETLY 对应FIND_PACKAGE指令里的QUIET参数，如果不指定QUIET就执行MESSAGE(STATUS "Found Hello: ${HELLO_LIBRARY}")
