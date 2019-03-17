# ArtML-project-2
We chose to generate fish and dogs for this project because it is interesting to see what we could potentially keep as household pets. We experimented with other living things, like tigers and plants, but we ultimately settled on fish and dogs because there were readily available datasets and the results turned out relatively realistic.
## CycleGAN
Files: 
- fishes.txt: list of URLs from ImageNet for a dataset of fish images
- get.sh: downloads random images from fishes.txt
- trim.sh: used to randomly pick which flower images to use
- CycleGAN-keras.py: run python CycleGAN-keras.py to train the GAN. Forked from https://github.com/tjwei/GANotebooks
  - parameters changed: use_lsgan to False, loadSize and imageSize to 512
  - wrote code to save and use preexisting models
  - wrote code to use generative model on new images
