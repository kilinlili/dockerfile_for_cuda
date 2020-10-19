#!/bin/bash

PREFIX=/usr/local
OPENCV_VERSION='4.4.0'

cmake \
        -DBUILD_EXAMPLES=ON \
        -DBUILD_opencv_python2=ON \
        -DBUILD_opencv_python3=ON \
        -DCMAKE_BUILD_TYPE=RELEASE \
        -DCMAKE_INSTALL_PREFIX=${PREFIX} \
        -DCUDA_ARCH_BIN=5.3,6.2,7.2 \
        -DCUDA_ARCH_PTX= \
        -DCUDNN_VERSION='8.0' \
        -DEIGEN_INCLUDE_PATH=/usr/include/eigen3 \
        -DOPENCV_ENABLE_NONFREE=ON \
        -DOPENCV_EXTRA_MODULES_PATH=/opt/opencv-4.4.0/opencv_contrib-4.4.0/modules \
        -DOPENCV_GENERATE_PKGCONFIG=ON \
        -DWITH_CUBLAS=ON \
        -DWITH_CUDA=ON \
        -DWITH_GSTREAMER=ON \
        -DWITH_LIBV4L=ON \
        -DWITH_OPENGL=ON \
        -DWITH_TBB=ON \
        -DWITH_V4L=ON \
        -DWITH_FFMPEG=ON \
        -DOPENCV_DNN_CUDA=ON \
        -DBUILD_opencv_world=OFF \
        .. 2>&1 | tee -a config.log


        #-DENABLE_NEON=ON \
        #この命令はarm用(armv7,8両方で使えるとかは未確認)
