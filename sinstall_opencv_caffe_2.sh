set -e
cd /nn/opencv/
tar -xvf opencv-2.4.13.zip

cd opencv-2.4.13/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D WITH_FFMPEG=OFF -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D BUILD_opencv_gpu=OFF -D BUILD_opencv_flann=OFF -D BUILD_opencv_objdetect=OFF -D BUILD_opencv_ml=OFF  -D BUILD_opencv_photo=OFF -D BUILD_opencv_video=OFF -D BUILD_opencv_superres=OFF   ..
make -j 4
sudo make install
sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
echo "OpenCV" $version "ready to be used"


cd /nn/caffe-master/
cp /caffeonubuntu/Makefile.config /nn/caffe-master/
make all -j4
make test
make runtest


echo "------all make done ------"

echo "------plz mkdir /imageDB and copy self data before test the mnist------"
