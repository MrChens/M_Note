ADD_EXECUTABLE(curltest main.c)

# 方法1
# INCLUDE_DIRECTORIES(/usr/include)
# TARGET_LINK_LIBRARIES(curltest curl)

# 方法2
FIND_PACKAGE(CURL)
IF(CURL_FOUND)
	INCLUDE_DIRECTORIES(${CURL_INCLUDE_DIR})
	TARGET_LINK_LIBRARIES(curltest ${CURL_LIBRARY})
ELSE(CURL_FOUND)
	MESSAGE(FATAL_ERROR "CURL library not found")
ENDIF(CURL_FOUND)

# 对于系统预定义的Find<name>.cmake模块，使用方法一般如上所示：
# 每一个模块都会定义以下几个变量
# <name>_FOUND
# <name>_INCLUDE_DIR or <name>_INCLUDES
# <name>_LIBRARY or <name>_LIBRARIES

# 可以让通过<name>_FOUND来判断模块是否被找到，若没找到，按照工程的需要关闭某些特性、给提示或者终止编译
# 如果<name>_FOUND为真，则将<name>_INCLUDE_DIR加入INCLUDE_DIRECTORIES，
# 将<name>_LIBRARY加入TARGET_LINK_LIBRARIES中
#************例子***************
# SET(mySources viewer.c)
# SET(optionalSources)
# SET(optionalLibs)
# FIND_PACKAGE(JPEG)
# IF(JPEG_FOUND)
#    SET(optionalSources ${optionalSources} jpegview.c)
#    INCLUDE_DIRECTORIES( ${JPEG_INCLUDE_DIR} )
#    SET(optionalLibs ${optionalLibs} ${JPEG_LIBRARIES} )
#    ADD_DEFINITIONS(-DENABLE_JPEG_SUPPORT)
# ENDIF(JPEG_FOUND)
# IF(PNG_FOUND)
#    SET(optionalSources ${optionalSources} pngview.c)
#    INCLUDE_DIRECTORIES( ${PNG_INCLUDE_DIR} )
#    SET(optionalLibs ${optionalLibs} ${PNG_LIBRARIES} )
#    ADD_DEFINITIONS(-DENABLE_PNG_SUPPORT)
# ENDIF(PNG_FOUND)
# ADD_EXECUTABLE(viewer ${mySources} ${optionalSources} ) TARGET_LINK_LIBRARIES(viewer ${optionalLibs}
