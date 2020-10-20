#!/bin/bash

PREFIX=/usr/local
OPENCV_VERSION='4.4.0'

cmake \
        -DBUILD_EXAMPLES=ON \
        -DBUILD_opencv_python3=ON \
        -DCMAKE_BUILD_TYPE=RELEASE \
        -DCMAKE_INSTALL_PREFIX=${PREFIX} \
        -DCUDA_ARCH_BIN=7.2,7.5 \
        -DCUDA_ARCH_PTX= \
        -DEIGEN_INCLUDE_PATH=/usr/include/eigen3 \
        -DOPENCV_EXTRA_MODULES_PATH=/opt/opencv/opencv_contrib/modules \
        -DOPENCV_GENERATE_PKGCONFIG=ON \
        -DWITH_CUDA=ON \
        -DWITH_OPENGL=ON \
        -DWITH_GSTREAMER=ON \
        -DWITH_LIBV4L=ON \
        -DWITH_OPENGL=ON \
        -DWITH_TBB=ON \
        -DWITH_V4L=ON \
        -DWITH_FFMPEG=ON \
        .. 2>&1 | tee -a config.log


        #-DCUDA_ARCH_PTXは空欄にしておかないとmakeができない
        #一応このスクリプトでビルドができた．
        # 450 cuda-11.0(10を入れようとしたところ失敗してそのまま11にバージョンが変わった)
        
