SET(LIBHELLO_SRC hello.c)

# 库构建
# ADD_LIBRARY(libname    [SHARED|STATIC|MODULE]
# 		[EXCLUDE_FROM_ALL]
#		source1 source2 ... sourceN)

# SHARED: 动态库
# STATIC: 静态库
# MODULE: 在使用dyld的系统有效，如果不支持dyld，则被当作SHARED对待
# EXCLUDE_FROM_ALL 这个库不会被默认构建，除非有其他的组件依赖或者手工构建
ADD_LIBRARY(hello SHARED ${LIBHELLO_SRC})
ADD_LIBRARY(hello_static STATIC ${LIBHELLO_SRC})

# SET_TARGET_PROPERTIES(target1 target2 ...
#                       PROPERTIES prop1 value1
#                       prop2 value2 ...)

# 用来设置输出的名字，对于动态库，还可以用来指定动态库版本和API版本

SET_TARGET_PROPERTIES(hello_static PROPERTIES OUTPUT_NAME "hello")

#获取目标的属性, 如果没有这个属性定义，则返回NOTFOUND
# GET_TARGET_PROPERTY(VAR target property)

GET_TARGET_PROPERTY(OUTPUT_VALUE hello_static OUTPUT_NAME)
MESSAGE(STATUS "This is the hello_static OUTPUT_NAME:" ${OUTPUT_VALUE})

# 为了避免cmake在构建一个新的target时会尝试清理掉其他使用这个名字的库,可以使用SET_TARGET_PROPERTIES的CLEAN_DIRECT_OUTPUT属性
SET_TARGET_PROPERTIES(hello PROPERTIES CLEAN_DIRECT_OUTPUT 1)
SET_TARGET_PROPERTIES(hello_static PROPERTIES CLEAN_DIRECT_OUTPUT 1)

# 动态库版本号
# VERSION: 动态库版本
# SOVERSION: API版本
SET_TARGET_PROPERTIES(hello PROPERTIES VERSION 1.2 SOVERSION 1)

INSTALL(TARGETS hello hello_static LIBRARY DESTINATION lib ARCHIVE DESTINATION lib)
INSTALL(FILES hello.h DESTINATION include/hello)
