#!/usr/bin/env sh
set -e

EXAMPLE=/imageDB
DATA=/imageDB
TOOLS=/nn/caffe-master/build/tools

$TOOLS/compute_image_mean $EXAMPLE/train_lmdb \
  $DATA/mean.binaryproto

echo "mean file Done."
