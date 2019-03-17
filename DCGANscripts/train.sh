set -x

"""
This script runs DCGAN on the Stanford Dogs dataset with resolution 64x64
"""
python main.py \
	--dataset folder \
	--dataroot ./images \
	--outf ./highres \
	--batchSize 64 \
	--imageSize 64 \
	--niter 200 \
  	--ngf 64 \
  	--ndf 16 \
	--cuda \
	--ngpu 1 \
	--lr 0.0001 2>&1 | tee -a dogs.log 

