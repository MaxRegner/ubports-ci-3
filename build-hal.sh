#!/bin/bash
source halium.env
cd $ANDROID_ROOT

# Halium 9 specific
./hybris-patches/apply-patches.sh

source build/envsetup.sh
export USE_CCACHE=1
breakfast aosp_f5321-user
make -i -j$(nproc) halium-boot


