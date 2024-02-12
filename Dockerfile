FROM --platform=x86_64 ubuntu:22.04

ENV HOME_DIR /root

WORKDIR $HOME_DIR

# Install zsh and Oh My Zsh:

RUN apt update && \
    apt install -y language-pack-en zsh && \
    update-locale

COPY .oh-my-zsh $HOME_DIR/.oh-my-zsh
COPY .zshrc $HOME_DIR/.zshrc

# Install the vim editor:

RUN apt install -y vim

# Download and install OpencOR with various Python packages needed by Circulatory Autogen:

RUN apt install -y libglib2.0-0 libopenmpi-dev wget && \
    wget -c https://github.com/opencor/opencor/releases/download/v0.7.1/OpenCOR-0-7-1-Linux.tar.gz -O - | tar -xz && \
    mv OpenCOR-0-7-1-Linux OpenCOR && \
    export LD_LIBRARY_PATH=$HOME_DIR/OpenCOR/lib && \
    $HOME_DIR/OpenCOR/python/bin/pip install --upgrade pip && \
    $HOME_DIR/OpenCOR/python/bin/pip install corner emcee mpi4py pandas schwimmbad scikit-optimize tqdm

# Install Circulatory Autogen:

COPY CirculatoryAutogen $HOME_DIR/CirculatoryAutogen
