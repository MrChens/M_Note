# !bash
BUILD_DIR="build.lesson2"
if [[ ! -e "$BUILD_DIR" ]]; then
	mkdir -p $BUILD_DIR
fi
cd "$BUILD_DIR"
# 试试下面有CMAKE_INSTALL_PREFIX和没有的区别
# cmake ..
cmake -DCMAKE_INSTALL_PREFIX=/tmp/lesson2/usr ..
if [[ $1 == "verbose" ]]; then
	echo -e "make with verbose"
	make VERBOSE=1
else
	echo -e "make without arg"
	make
fi
make install
