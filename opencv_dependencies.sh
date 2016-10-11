set -e
echo "--- Removing any pre-installed ffmpeg and x264"
apt-get -qq remove ffmpeg x264 libx264-dev

echo "------1/32 install libopencv-dev ------"
apt-get -y install libopencv-dev
echo "------2/32 install build-essential ------"
apt-get -y install build-essential
echo "------3/32 install checkinstall ------"
apt-get -y install checkinstall
echo "------4/32 install cmake ------"
apt-get -y install cmake
echo "------5/32 install pkg-config ------"
apt-get -y install pkg-config
echo "------6/32 install yasm ------"
apt-get -y install yasm
echo "------7/32 install libtiff5 ------"
apt-get -y install libtiff5-dev
echo "------8/32 install libjpeg ------"
apt-get -y install libjpeg-dev
echo "------9/32 install libjasper ------"
apt-get -y install libjasper-dev
echo "------10/32 install libavcodec ------"
apt-get -y install libavcodec-dev
echo "------11/32 install libavformat ------"
apt-get -y install libavformat-dev
echo "------12/32 install libswscale ------"
apt-get -y install libswscale-dev
echo "------13/32 install libdc1394 ------"
apt-get -y install libdc1394-22-dev
echo "------14/32 install libxine2 ------"
apt-get -y install libxine2-dev
echo "------15/32 install libgstreamer0 ------"
apt-get -y install libgstreamer0.10-dev
echo "------16/32 install libgstreamer ------"
apt-get -y install libgstreamer-plugins-base0.10-dev
echo "------17/32 install libv4l ------"
apt-get -y install libv4l-dev
echo "------18/32 install python ------"
apt-get -y install python-dev
echo "------19/32 install numpy ------"
apt-get -y install python-numpy
echo "------20/32 install libtbb ------"
apt-get -y install libtbb-dev
echo "------21/32 install libqt4 ------"
apt-get -y install libqt4-dev
echo "------22/32 install libgtk2 ------"
apt-get -y install libgtk2.0-dev
echo "------23/32 install libfaac ------"
apt-get -y install libfaac-dev
echo "------24/32 install libmp3lame ------"
apt-get -y install libmp3lame-dev
echo "------25/32 install libopencore ------"
apt-get -y install libopencore-amrnb-dev
echo "------26/32 install libopencore ------"
apt-get -y install libopencore-amrwb-dev
echo "------27/32 install libtheora ------"
apt-get -y install libtheora-dev
echo "------28/32 install libvorbis ------"
apt-get -y install libvorbis-dev
echo "------29/32 install libxvidcore ------"
apt-get -y install libxvidcore-dev
echo "------30/32 install x264 ------"
apt-get -y install x264
echo "------31/32 install v4l ------"
apt-get -y install v4l-utils
echo "------32/32 install unzip ------"
#install_dependency ffmpeg
apt-get -y install unzip

