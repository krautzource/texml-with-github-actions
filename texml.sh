#!/bin/bash

echo $(pwd)

echo "install dependencies"
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

# clone texml
git clone https://github.com/AmerMathSoc/texml.git
cp ./texml/cfg/texml.cfg.template ./texml/cfg/texml.cfg
