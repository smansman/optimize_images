#!/bin/bash
#https://github.com/toy/image_optim
#readme on https://github.com/toy/image_optim
#image_optim *.{jpg,png,gif,svg} #to read this files and 
#-r to recrusive in dirs
#also get the image_optim.yml from this repo (or make your own)
#copy image_optim.yml to $XDG_CONFIG_HOME/image_optim.yml (by default ~/.config/image_optim.yml)
#.image_optim.yml in current working directory



#for redhat 
#install imagemagick
yum -y install ImageMagick.*

#install ruby and gem
yum -y install ruby
yum -y install rubygems

#install what is needed for 

sudo yum install -y advancecomp gifsicle jhead libjpeg optipng pngquant
yum -y install libjpeg-turbo-*
yum -y install libjpeg-turbo
JPEGOPTIM_VERSION=1.4.1
PNGCRUSH_VERSION=1.7.77
PNGOUT_VERSION=20130221
cd /tmp
curl -O http://www.kokkonen.net/tjko/src/jpegoptim-$JPEGOPTIM_VERSION.tar.gz
tar zxf jpegoptim-$JPEGOPTIM_VERSION.tar.gz
cd jpegoptim-$JPEGOPTIM_VERSION
./configure && make && make install

cd /tmp
curl -O http://iweb.dl.sourceforge.net/project/pmt/pngcrush/$PNGCRUSH_VERSION/pngcrush-$PNGCRUSH_VERSION.tar.gz
tar zxf pngcrush-$PNGCRUSH_VERSION.tar.gz
cd pngcrush-$PNGCRUSH_VERSION
make && cp -f pngcrush /usr/local/bin

cd /tmp
curl -O http://static.jonof.id.au/dl/kenutils/pngout-$PNGOUT_VERSION-linux.tar.gz
tar zxf pngout-$PNGOUT_VERSION-linux.tar.gz
cd pngout-$PNGOUT_VERSION-linux/x86_64
cp -f pngout /usr/local/bin

gem install image_optim



