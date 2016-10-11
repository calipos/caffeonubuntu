#!/usr/bin/env sh
set -e

cp /caffeonubuntu/testjpg.jpg  /imageDB/testjpg.jpg

EXAMPLE=/imageDB
DATA=/imageDB
TOOLS=/nn/caffe-master/build/tools

$TOOLS/compute_image_mean $EXAMPLE/train_lmdb \
  $DATA/mean.binaryproto

echo "mean file Done."

cd /imageDB
touch flags.txt
echo "\
00
11
22
33
44
55
66
77
88
99">./flags.txt

echo "flags file Done."
