set -e
cp /etc/apt/sources.list /etc/apt/sources.list.old
Codename=$(lsb_release -a | grep Codename | awk '{print $2}')
echo "\
deb http://mirrors.aliyun.com/ubuntu/ $Codename main multiverse restricted universe
deb http://mirrors.aliyun.com/ubuntu/ $Codename-backports main multiverse restricted universe
deb http://mirrors.aliyun.com/ubuntu/ $Codename-proposed main multiverse restricted universe
deb http://mirrors.aliyun.com/ubuntu/ $Codename-security main multiverse restricted universe
deb http://mirrors.aliyun.com/ubuntu/ $Codename-updates main multiverse restricted universe
deb-src http://mirrors.aliyun.com/ubuntu/ $Codename main multiverse restricted universe
deb-src http://mirrors.aliyun.com/ubuntu/ $Codename-backports main multiverse restricted universe
deb-src http://mirrors.aliyun.com/ubuntu/ $Codename-proposed main multiverse restricted universe
deb-src http://mirrors.aliyun.com/ubuntu/ $Codename-security main multiverse restricted universe
deb-src http://mirrors.aliyun.com/ubuntu/ $Codename-updates main multiverse restricted universe ">/etc/apt/sources.list
apt-get update
apt-get upgrade
apt-get install libprotobuf
apt-get install libprotobuf-dev
apt-get install libleveldb-dev
apt-get install libsnappy-dev
apt-get install libboost-all-dev
apt-get install libhdf5-serial-dev
apt-get install libgflags-dev
apt-get install libgoogle-glog-dev
apt-get install liblmdb-dev
apt-get install protobuf-compiler
apt-get install python2.7 
apt-get install python2.7-dev
apt-get install python-pip
apt-get install -y libatlas-base-dev
apt-get install  -y python-scipy
apt-get install  -y python-matplotlib
apt-get install  -y python-sklearn python-skimage
apt-get install  -y python-h5py
apt-get install  -y python-protobuf
apt-get install  -y python-leveldb python-networkx python-nose python-pandas 
apt-get install  -y python-gflags
apt-get install  -y cython
apt-get install  -y ipython
apt-get install  -y python-yaml
apt-get install  -y protobuf-c-compiler 
apt-get install  -y protobuf-compile
sh ./opencv_dependencies.sh
mkdir nn
cd nn/
mkdir opencv
cd opencv/
apt-get install openssh-server

echo "--- Plz test WinSCP , local ip is "
ifconfig |grep "inet addr"
echo "---if winscp cannot connect, try reboot"
echo "---else copy the caffe file and the opencv2.4.13 to the dir:/nn and /nn/opencv/ "
echo "---pwd = /caffeinstall, if reboot, plz cd this director &run the another .sh "
