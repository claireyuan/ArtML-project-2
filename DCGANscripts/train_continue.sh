set -x

"""
This script continues training on 64x64 images with a reset discriminator.
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
	--lr 0.00001 \
	--netG "netG_epoch_199.pth" \
	--netD "netD_epoch_1.pth" 2>&1 | tee -a dogs_continue.log