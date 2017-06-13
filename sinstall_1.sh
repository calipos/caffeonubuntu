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
echo "------1/24 install libprotobuf ------"
apt-get install -y  libprotobuf-dev
echo "------2/24 install libleveldb ------"
apt-get install -y  libleveldb-dev
echo "------3/24 install libsnappy ------"
apt-get install -y  libsnappy-dev
echo "------4/24 install libboost ------"
apt-get install -y  libboost-all-dev
echo "------5/24 install libhdf5 ------"
apt-get install  -y libhdf5-serial-dev
echo "------6/24 install libgflags ------"
apt-get install -y  libgflags-dev
echo "------7/24 install libgoogle ------"
apt-get install -y  libgoogle-glog-dev
echo "------8/24 install liblmdb ------"
apt-get install -y  liblmdb-dev
echo "------9/24 install protobuf ------"
apt-get install -y  protobuf-compiler
echo "------10/24 install python2 ------"
apt-get install -y  python2.7 
echo "------11/24 install python2 ------"
apt-get install -y  python2.7-dev
echo "------12/24 install pip ------"
apt-get install -y  python-pip
echo "------13/24 install libatlas ------"
apt-get install -y libatlas-base-dev
echo "------14/24 install scipy ------"
apt-get install  -y python-scipy
echo "------15/24 install matplotlib ------"
apt-get install  -y python-matplotlib
echo "------16/24 install sklearn ------"
apt-get install  -y python-sklearn python-skimage
echo "------ install python-h5py ------"
apt-get install  -y python-h5py
echo "------18/24 install python-protobuf ------"
apt-get install  -y python-protobuf
echo "------19/24 install python-leveldb ------"
apt-get install  -y python-leveldb python-networkx python-nose python-pandas 
echo "------20/24 install gflags ------"
apt-get install  -y python-gflags
echo "------21/24 install cython ------"
apt-get install  -y cython
pip install easydict 
echo "------22/24 install ipython ------"
apt-get install  -y ipython
echo "------23/24 install python-yaml ------"
apt-get install  -y python-yaml
echo "------24/24 install protobuf-c-compiler ------"
apt-get install  -y protobuf-c-compiler 
echo "------25/24 install openblas ------"
apt-get install  -y libopenblas-dev
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
