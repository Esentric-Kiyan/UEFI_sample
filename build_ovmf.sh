#!/bin/bash

export WORKSPACE=$HOME/Desktop/UEFI/edk2
export EDK_TOOLS_PATH=$WORKSPACE/BaseTools
export PACKAGES_PATH=$WORKSPACE
export GCC5_X64_PREFIX=x86_64-linux-gnu-
export PATH=$EDK_TOOLS_PATH/Source/C/bin:$PATH
source $WORKSPACE/edksetup.sh

build --platform=UefiLessonsPkg/UefiLessonsPkg.dsc \
      --arch=X64 \
      --buildtarget=RELEASE \
      --tagname=GCC5