# !bash
BUILD_DIR="build.lesson2"
if [[ ! -e "$BUILD_DIR" ]]; then
	mkdir $BUILD_DIR
fi
cd "$BUILD_DIR"
# 试试下面有CMAKE_INSTALL_PREFIX和没有的区别
# cmake ..
cmake -DCMAKE_INSTALL_PREFIX=/tmp/lesson2/usr ..
make VERBOSE=1
make install
