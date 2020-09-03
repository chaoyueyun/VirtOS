#!/bin/bash
#
# Build iso for VirtOS
#
# Copyright (C) 2020 chaoyue.com.cn
#
# This is free software, licensed under the Apache License Version 2.0.
# See /LICENSE for more information.
#


# Set ENV
# ......

# Install env for build iso.
#export VIRTOS_BUILD_DIR=~/virtos-iso

#if [ -d $VIRTOS_BUILD_DIR ]; then
#  echo "Delete $VIRTOS_BUILD_DIR."
#  #rm -rf $VIRTOS_BUILD_DIR
#else
#  # mkdir -pv $VIRTOS_BUILD_DIR/{profiles,custom-deb,extra-file}
#fi


# Build patch for debian deb
# ......
# make deb


# Build custom deb
# ......
# make deb


# Create installer
#


# Build iso for VirtOS
build-simple-cdd --conf ./config/VirtOS-amd64.conf --verbose --dvd
