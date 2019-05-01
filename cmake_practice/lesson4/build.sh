BUILD_DIR="build.lesson4"
if [[ ! -e "$BUILD_DIR" ]]; then
	mkdir -p $BUILD_DIR
fi
cd "$BUILD_DIR"
# cmake -DCMAKE_INSTALL_PREFIX=./output ..
# 这行是配合FIND_PATH使用的
cmake -DCMAKE_INSTALL_PREFIX=./output -DCMAKE_INCLUDE_PATH=/Users/mrchens/Documents/temp/cmake/lesson3/build.lesson3/output/include/hello ..

if [[ $1 == "verbose" ]]; then
	echo -e "make with verbose"
	make VERBOSE=1
else
	echo -e "make without arg"
	make
fi
make install
