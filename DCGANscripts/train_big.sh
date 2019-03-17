set -x

""" 
This script trains the DCGAN with higher resolution 128x128 images.
"""
python main_big.py \
	--dataset folder \
	--dataroot ./images \
	--outf ./highres3 \
	--batchSize 64 \
	--imageSize 128 \
	--niter 200 \
  	--ngf 128 \
  	--ndf 32 \
	--cuda \
	--ngpu 1 \
	--lr 0.0001 2>&1 | tee -a big.log

# reset discriminator and continue training
python main_big.py \
	--dataset folder \
	--dataroot ./images \
	--outf ./highres3 \
	--batchSize 64 \
	--imageSize 128 \
	--niter 200 \
  	--ngf 128 \
  	--ndf 32 \
	--cuda \
	--ngpu 1 \
	--lr 0.00001 \
  	--netG "highres3/netG_epoch_199.pth" \
	--netD "highres3/netD_epoch_1.pth" 2>&1 | tee -a big.log
