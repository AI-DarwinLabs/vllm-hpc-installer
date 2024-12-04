#!/bin/bash

set -e  # Exit on error

echo "Installing Flash Attention..."

# Clone Flash Attention repository
if [ -d "flash-attention" ]; then
    echo "Updating existing Flash Attention repository..."
    cd flash-attention
    git pull
else
    echo "Cloning Flash Attention repository..."
    git clone ${FLASH_ATTENTION_REPO}
    cd flash-attention
fi

# Update submodules
echo "Updating submodules..."
git submodule update --init

# Build and install
echo "Building Flash Attention..."
GPU_ARCHS="${GPU_ARCH}" python setup.py install

cd ..

echo "Flash Attention installation completed successfully!"
