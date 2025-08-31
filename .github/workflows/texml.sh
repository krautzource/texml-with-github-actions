#!/bin/bash

# install package dependencies

apt update -y
apt install -y texlive \
 texlive-extra-utils \
 texlive-xetex \
 texlive-bibtex-extra \
 texlive-fonts-extra \
 libexception-class-perl \
 libconfig-inifiles-perl \
 libxml-libxml-perl \
 libxml-libxslt-perl \
 libxml-simple-perl \
 xml-twig-tools \
 libpng-dev \
 libjpeg-dev \
 gcc \
 make \
 libimage-info-perl \
 pdf2svg \
 liblingua-en-numbers-ordinate-perl \
 libfile-mmagic-xs-perl \

# install fonts (for svg generation)

cp -r ./fonts/ "/usr/share/fonts/opentype/"
fc-cache -fv
