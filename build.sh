#!/bin/bash
#
# Build iso for VirtOS
#
# Copyright (C) 2020 chaoyue.com.cn
#
# This is free software, licensed under the Apache License Version 2.0.
# See /LICENSE for more information.
#

Usage() {
  echo "Help:"
  echo "-a x86|arm|mips"
  echo "-h help"
}

# Arg
#
while getopts "a:h" opt; do
  case $opt in
    a)
      if [ "$OPTARG" == "x86" ]; then
        export ARCH=amd64
      elif [ "$OPTARG" == "arm" ]; then
        export ARCH=arm64
      elif [ "$OPTARG" == "mips" ]; then
        export ARCH=mips64
      else
        echo "Arg is invalid! $OPTARG"
        exit 1
      fi
      ;;
    *)
      Usage
      exit 1
      ;;
  esac
done

if [ "$ARCH" = "" ]; then
  Usage
  exit 1
fi

# Set ENV
# ......

# Install env for build iso.
export VIRTOS_BUILD_DIR=~/VirtOS-BUILD

if [ -d $VIRTOS_BUILD_DIR ]; then
  echo "Delete $VIRTOS_BUILD_DIR."
  #rm -rf $VIRTOS_BUILD_DIR
else
  mkdir -pv $VIRTOS_BUILD_DIR/{profiles,custom-deb,extra-file}
fi
cp $(pwd)/profiles/VirtOS.* $VIRTOS_BUILD_DIR/profiles/
cp $(pwd)/config/VirtOS-$ARCH.conf $VIRTOS_BUILD_DIR/VirtOS.conf


# Build patch for debian deb
# ......
# make deb


# Build custom deb
# ......
# make deb


# Create installer
#


# Build iso for VirtOS
cd $VIRTOS_BUILD_DIR
build-simple-cdd --conf VirtOS.conf --verbose --dvd