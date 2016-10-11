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
# apt-get install libprotobuf
echo "------ install libprotobuf ------"
apt-get install -y  libprotobuf-dev
echo "------ install libleveldb ------"
apt-get install -y  libleveldb-dev
echo "------ install libsnappy ------"
apt-get install -y  libsnappy-dev
echo "------ install libboost ------"
apt-get install -y  libboost-all-dev
echo "------ install libhdf5 ------"
apt-get install  -y libhdf5-serial-dev
echo "------ install libgflags ------"
apt-get install -y  libgflags-dev
echo "------ install libgoogle ------"
apt-get install -y  libgoogle-glog-dev
echo "------ install liblmdb ------"
apt-get install -y  liblmdb-dev
echo "------ install protobuf ------"
apt-get install -y  protobuf-compiler
echo "------ install python2 ------"
apt-get install -y  python2.7 
echo "------ install python2 ------"
apt-get install -y  python2.7-dev
echo "------ install pip ------"
apt-get install -y  python-pip
echo "------ install libatlas ------"
apt-get install -y libatlas-base-dev
echo "------ install scipy ------"
apt-get install  -y python-scipy
echo "------ install matplotlib ------"
apt-get install  -y python-matplotlib
echo "------ install sklearn ------"
apt-get install  -y python-sklearn python-skimage
echo "------ install python-h5py ------"
apt-get install  -y python-h5py
echo "------ install python-protobuf ------"
apt-get install  -y python-protobuf
echo "------ install python-leveldb ------"
apt-get install  -y python-leveldb python-networkx python-nose python-pandas 
echo "------ install gflags ------"
apt-get install  -y python-gflags
echo "------ install cython ------"
apt-get install  -y cython
echo "------ install ipython ------"
apt-get install  -y ipython
echo "------ install python-yaml ------"
apt-get install  -y python-yaml
echo "------ install protobuf-c-compiler ------"
apt-get install  -y protobuf-c-compiler 
sh ./opencv_dependencies.sh
cd /
mkdir nn
cd nn/
mkdir opencv
cd opencv/
apt-get install -y  openssh-server

echo "--- Plz test WinSCP , local ip is "
ifconfig |grep "inet addr"
echo "---if winscp cannot connect, try reboot"
echo "---the config in /etc/ssh/sshd_consif must be modified"
echo "---else copy the caffe file and the opencv2.4.13 to the dir:/nn and /nn/opencv/ "
echo "---pwd = /caffeinstall, if reboot, plz cd this director &run the another .sh "
