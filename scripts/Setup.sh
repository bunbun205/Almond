pushd ..
premake5 --os=linux vs2022
cmake-converter -s AlmondApp.sln
mkdir build
cd build
cmake ..
make
cd AlmondApp
./AlmondApp
popd