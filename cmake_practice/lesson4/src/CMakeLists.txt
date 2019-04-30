# 添加特定头文件的搜索路径
# INCLUDE_DIRECTORIES([AFTER|BEFORE] [SYSTEM] dir1 dir2 ...)
# 用来向工程添加多个特定的头文件搜索路径，路径之间用空格分割
# 默认的行为是追加到当前的头文件搜索路径的后面
# 可以通过两种方式来进行控制搜索路径添加的方式:
#	1. CMAKE_INCLUDE_DIRECTORIES_BEFORE，通过 SET 这个 cmake 变量为 on，可以 将添加的头文件搜索路径放在已有路径的前面
#	2. 通过 AFTER 或者 BEFORE 参数，也可以控制是追加还是置前

# INCLUDE_DIRECTORIES("${PROJECT_SOURCE_DIR}/../lesson3/build.lesson3/output/include/hello")
# SET(CMAKE_INCLUDE_DIRECTORIES_BEFORE on)

# 下面这4行是配合-DCMAKE_INCLUDE_PATH=/Users/mrchens/Documents/temp/cmake/lesson3/build.lesson3/output/include/hello这样子使用的用来替换INCLUDE_DIRECTORIES
FIND_PATH(myHeader hello.h)
IF(myHeader)
INCLUDE_DIRECTORIES(${myHeader})
ENDIF(myHeader)


# 为target添加共享库
# LINK_DIRECTORIES指令，添加非标准的共享库搜索路径，语法:
#	LINK_DIRECTORIES(directory1 directory2 ...)
# TARGET_LINK_LIBRARIES指令，为target添加需要链接的共享库，语法:
# 	TARGET_LINK_LIBRARIES(target library1
#                       <debug | optimized> library2
# 			...)
LINK_DIRECTORIES("${PROJECT_SOURCE_DIR}/../lesson3/build.lesson3/output/lib")
ADD_EXECUTABLE(main main.c)

# 在mac上可以使用otool -L main来查看main链接了那些共享库
TARGET_LINK_LIBRARIES(main hello)
# TARGET_LINK_LIBRARIES(main hello.a)
INSTALL(TARGETS main RUNTIME DESTINATION bin)

# 特殊的环境变量CMAKE_INCLUDE_PATH, CMAKE_LIBRARY_PATH
# 这两个是环境变量而不是cmake变量
# 使用方法是要在bash中用export或者在csh中使用set命令设置或者CMAKE_INCLUDE_PATH=/home/include cmake ..等方式
# 这两个变量主要是用来解决以前 autotools 工程中 --extra-include-dir 等参数的支持的
# 也就是，如果头文件没有存放在常规路径(/usr/include, /usr/local/include 等)， 则可以通过这些变量就行弥补
# 假设我们的hello.h，它存放在${PROJECT_SOURCE_DIR}/../lesson3/build.lesson3/output/include/hello目录，所以直接查找肯定是找不到的。
# 前面我们直接使用了绝对路径INCLUDE_DIRECTORIES("${PROJECT_SOURCE_DIR}/../lesson3/build.lesson3/output/include/hello")告诉工 程这个头文件目录。
# 为了将程序更智能一点，我们可以使用 CMAKE_INCLUDE_PATH 来进行，使用 bash 的方法 如下:
# export CMAKE_INCLUDE_PATH=../lesson3/build.lesson3/output/include/hello
# 然后在头文件中将 INCLUDE_DIRECTORIES("${PROJECT_SOURCE_DIR}/../lesson3/build.lesson3/output/include/hello")替换为: FIND_PATH(myHeader hello.h)
# IF(myHeader)
# INCLUDE_DIRECTORIES(${myHeader})
# ENDIF(myHeader)


# FIND_PATH 用来在指定路径中搜索文件名
# 如果你不使用 FIND_PATH，CMAKE_INCLUDE_PATH 变量的设置是没有作用的，你不能指 望它会直接为编译器命令添加参数-I<CMAKE_INCLUDE_PATH>
# 以此为例，CMAKE_LIBRARY_PATH 可以用在 FIND_LIBRARY 中。
# 同样，因为这些变量直接为 FIND_指令所使用，所以所有使用 FIND_指令的 cmake 模块都 会受益
