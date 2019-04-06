# 定义工程名字 语法: PROJECT(projectname [CXX] [C] [Java])
# 该指令隐式的定义了两个cmake变量:
# <projectname>_BINARY_DIR , <projectname>_SOURCE_DIR
# cmake系统预定义了和上面两个变量一致的变量(官方建议使用):
# PROJECT_BINARY_DIR , PROJECT_SOURCE_DIR
PROJECT (HELLO)

# 显式定义变量 语法: SET(VAR [VALUE] [CACHE TYPE DOCSTRING [FORCE]])
SET(SRC_LIST main.c)

# 向终端输出用户定义的信息，语法: MESSAGE([SEND_ERROR | STATUS | FATAL_ERROR] "message" ...))
# 包含三种类型:
# SEND_ERROR: 产生错误，生成过程被跳过
# STATUS: 输出前缀为--的信息
# FATAL_ERROR: 终止所有cmake过程
MESSAGE(STATUS "This is BINARY dir " ${HELLO_BINARY_DIR})
MESSAGE(STATUS "This is SOURCE dir " ${HELLO_SOURCE_DIR})

# 使用SRC_LIST中的源文件，生成一个名为hello的可执行文件
ADD_EXECUTABLE(hello ${SRC_LIST})
