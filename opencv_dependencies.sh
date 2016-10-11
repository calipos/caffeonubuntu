set -e
echo "--- Removing any pre-installed ffmpeg and x264"
apt-get -qq remove ffmpeg x264 libx264-dev

echo "------ install libopencv-dev ------"
apt-get -y install libopencv-dev
echo "------ install build-essential ------"
apt-get -y install build-essential
echo "------ install checkinstall ------"
apt-get -y install checkinstall
echo "------ install cmake ------"
apt-get -y install cmake
echo "------ install pkg-config ------"
apt-get -y install pkg-config
echo "------ install yasm ------"
apt-get -y install yasm
echo "------ install libtiff5 ------"
apt-get -y install libtiff5-dev
echo "------ install libjpeg ------"
apt-get -y install libjpeg-dev
echo "------ install libjasper ------"
apt-get -y install libjasper-dev
echo "------ install libavcodec ------"
apt-get -y install libavcodec-dev
echo "------ install libavformat ------"
apt-get -y install libavformat-dev
echo "------ install libswscale ------"
apt-get -y install libswscale-dev
echo "------ install libdc1394 ------"
apt-get -y install libdc1394-22-dev
echo "------ install libxine2 ------"
apt-get -y install libxine2-dev
echo "------ install build-essential ------"
apt-get -y install libgstreamer0.10-dev
echo "------ install build-essential ------"
apt-get -y install libgstreamer-plugins-base0.10-dev
echo "------ install build-essential ------"
apt-get -y install libv4l-dev
echo "------ install build-essential ------"
apt-get -y install python-dev
echo "------ install build-essential ------"
apt-get -y install python-numpy
echo "------ install build-essential ------"
apt-get -y install libtbb-dev
echo "------ install build-essential ------"
apt-get -y install libqt4-dev
echo "------ install build-essential ------"
apt-get -y install libgtk2.0-dev
echo "------ install build-essential ------"
apt-get -y install libfaac-dev
echo "------ install build-essential ------"
apt-get -y install libmp3lame-dev
echo "------ install build-essential ------"
apt-get -y install libopencore-amrnb-dev
echo "------ install build-essential ------"
apt-get -y install libopencore-amrwb-dev
echo "------ install build-essential ------"
apt-get -y install libtheora-dev
echo "------ install build-essential ------"
apt-get -y install libvorbis-dev
echo "------ install build-essential ------"
apt-get -y install libxvidcore-dev
echo "------ install build-essential ------"
apt-get -y install x264
echo "------ install build-essential ------"
apt-get -y install v4l-utils
echo "------ install build-essential ------"
#install_dependency ffmpeg
apt-get -y install unzip

