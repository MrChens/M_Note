# 定义工程名字 语法: PROJECT(projectname [CXX] [C] [Java])
# 该指令隐式的定义了两个cmake变量:
# <projectname>_BINARY_DIR , <projectname>_SOURCE_DIR
# cmake系统预定义了和上面两个变量一致的变量(官方建议使用):
# PROJECT_BINARY_DIR , PROJECT_SOURCE_DIR
PROJECT (HELLO)

# 向当前工程添加存放源文件的子目录，并可以指定中间二进制和目标二进制存放的位置.
# 语法:ADD_SUBDIRECTORY(source_dir [binary_dir] [EXCLUDE_FROM_ALL])
# EXCLUDE_FROM_ALL: 将这个目录从编译过程中排除，比如，工程的test代码，可能就需要工程构建完成后，再进入test目录单独进行构建
# 将src子目录加入工程，并指定编译输出(包含编译中间结果)路径为bin目录。如果不进行bin目录的指定，那么编译结果(包括中间结果)都将存放在build.lesson2/src目录(这个目录与原有的src目录对应),指定bin目录后，相当于在编译时将src重命名为bin，所有的中间结果和目标二进制都将存放在bin目录
# 可以自己试试看去掉bin

# SUBDIRS(dir1 dir2 ...) 可以一次添加多个子目录， 不推荐使用，即使外部编译，子目录体系仍然会被保存

# SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_BINARY_DIR}/bin)
# SET(LIBRARY_OUTPUT_PATH ${PROJECT_BINARY_DIR}/lib)
# 重新定义上述两个变量来指定最终的目标二进制的位置(指最终生成的hello或者最终的共享库，不包含编译生成的中间文件)
# 这两条指令应该写在工程的CMakeLists.txt还是src目录下的CMakeLists.txt,
# 一个简单的规则:
# 在哪里ADD_EXECUTABLE或ADD_LIBRARY,如果需要改变目标存放路径，就在那里加入上述的定义
# 这个例子里，就是在src下的CMakeLists.txt里加入
ADD_SUBDIRECTORY(src bin)


# 安装的需要有两种:
# 1. 从代码编译后直接make install安装
# 2. 打包时的指定目录安装

# INSTALL, CMAKE_INSTALL_PREFIX
# INSTALL指令用于定义安装规则，安装的内容可以包括目标二进制、动态库、静态库以及文件、目录、脚本等

# 目标文件安装:
# INSTALL(TARGETS targets...
#             [[ARCHIVE|LIBRARY|RUNTIME]
#                         [DESTINATION <dir>]
#                         [PERMISSIONS permissions...]
#                         [CONFIGURATIONS
#           [Debug|Release|...]]
#                         [COMPONENT <component>]
#                         [OPTIONAL]
#                        ] [...])

# targets:是我们通过ADD_EXECUTABLE或ADD_LIBRARY定义的目标文件，可能是可执行二进制、动态库、静态库
# 目标类型:
# ARCHIVE: 特指静态库
# LIBRARY: 特指动态库
# RUNTIME: 特指可执行目标二进制
# DESTINATION: 定义了安装的路径，如果路径以/开头，那么指的是绝对路径,此时CMAKE_INSTALL_PREFIX就无效了
#	如果希望使用CMAKE_INSTALL_PREFIX来定义安装路径，就要写成相对路径，即不要以/开头，那么安装后的路径就是:
#	${CMAKE_INSTALL_PREFIX}/<DESTINATION定义的路径>
# example:
#	INSTALL(TARGETS myrun mylib mystaticlib
#	     RUNTIME DESTINATION bin
#	     LIBRARY DESTINATION lib
#	     ARCHIVE DESTINATION libstatic
#	)

# ****************************************

# 普通文件的安装:
# INSTALL(FILES files... DESTINATION <dir>
#             [PERMISSIONS permissions...]
#             [CONFIGURATIONS [Debug|Release|...]]
#             [COMPONENT <component>]
#             [RENAME <name>] [OPTIONAL])

# 可用于安装一般文件，并可以指定访问权限，文件名是此指令所在路径下的相对路径。
# 如果不定义权限PERMISSIONS,安装后的默认权限为:
# OWNER_WRITE, OWNER_READ, GROUP_READ, WORLD_READ, 即644权限

# ****************************************

# 非目标文件的可执行程序安装(比如脚本之类):
# INSTALL(PROGRAMS files... DESTINATION <dir>
#             [PERMISSIONS permissions...]
#             [CONFIGURATIONS [Debug|Release|...]]
#             [COMPONENT <component>]
#             [RENAME <name>] [OPTIONAL])

# 与上面的FILES指令使用方式一样，唯一不同的是安装后的权限为:
# OWNER_EXECUTE, GROUP_EXECUTE, WORLD_EXECUTE, 即744权限

# ****************************************

# 目录的安装:
# INSTALL(DIRECTORY dirs... DESTINATION <dir>
#             [FILE_PERMISSIONS permissions...]
#             [DIRECTORY_PERMISSIONS permissions...]
#             [USE_SOURCE_PERMISSIONS]
#             [CONFIGURATIONS [Debug|Release|...]]
#             [COMPONENT <component>]
#             [[PATTERN <pattern> | REGEX <regex>]
#             [EXCLUDE] [PERMISSIONS permissions...]] [...])

# DIRECTORY: 后面连接的是所在Source目录的相对路径，注意:
#	abc与abc/有很大的区别
#	如果目录名不以/结尾，那么这个目录将被安装为目标路径下的abc
#	如果目录名以/结尾，代表将这个目录中的内容安装到目标路径，但不包括这个目录本身。
# PATTERN: 用于使用正则表达式进行过滤
# PERMISSIONS: 指定PATTERN过滤后的文件权限


# ****************************************

# 安装时CMAKE脚本的执行:
# INSTALL([[SCRIPT <file>] [CODE <code>]] [...])
# SCRIPT 参数用于在安装时调用cmake脚本文件(<abc>.cmake)文件)
# CODE 用于执行CMAKE指令，必须用双引号包裹
# INSTALL(CODE "MESSAGE(\"Sample install message.\")")


INSTALL(FILES COPYRIGHT README DESTINATION share/doc/cmake/lesson2)
INSTALL(PROGRAMS runhello.sh DESTINATION bin)
INSTALL(DIRECTORY doc/ DESTINATION share/doc/cmake/lesson2)

