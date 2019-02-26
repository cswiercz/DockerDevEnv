FROM ubuntu:18.04
MAINTAINER Chris Swierczewski <cswiercz@gmail.com>
ENV USER root
ENV HOME /root

#
# Install basic software development tools
#
RUN apt-get update && \
    apt-get install -y \
        build-essential \
        software-properties-common \
        emacs \
        wget \
        curl \
        file \
        git \
        git-core \
        gcc \
        g++ \
        clang \
        libclang-dev \
        valgrind \
        libboost-all-dev \
        cmake \
        python3 \
        python3-dev \
        python3-pip \
        python3-setuptools \
        python3-wheel \
        libpython3-dev

#
# Install python libraries
#
RUN pip3 install ipython \
                 numpy \
                 scipy \
                 matplotlib \
                 pandas \
                 scikit-learn \
                 h5py \
                 pybind11 \
                 mxnet \
                 pytest

RUN git clone https://github.com/nmslib/hnswlib.git ${HOME}/hnswlib && \
    cd ${HOME}/hnswlib/python_bindings && \
    python3 setup.py install

#
# Copy local configurations
#
#COPY .gitconfig ${HOME}/.gitconfig
#COPY .emacs.d ${HOME}/.emacs.d
#COPY .spacemacs ${HOME}/.spacemacs
#ENV TERM xterm-256color
