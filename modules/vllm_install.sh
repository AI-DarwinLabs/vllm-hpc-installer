#!/bin/bash

set -e  # Exit on error

echo "Installing vLLM dependencies..."
pip install -r requirements.txt

# Clone and install vLLM
echo "Cloning vLLM repository..."
if [ -d "vllm" ]; then
    echo "Updating existing vLLM repository..."
    cd vllm
    git pull
else
    git clone ${VLLM_REPO}
    cd vllm
fi

echo "Installing vLLM requirements..."
pip install -r requirements-rocm.txt

echo "Building vLLM..."
PYTORCH_ROCM_ARCH="${GPU_ARCH}" python setup.py develop

# Verify installation
echo "Verifying vLLM installation..."
python -c 'import vllm; print(f"vLLM version: {vllm.__version__}")'

cd ..

# Install bitsandbytes (optional)
echo "Installing bitsandbytes..."
pip install 'https://github.com/bitsandbytes-foundation/bitsandbytes/releases/download/continuous-release_multi-backend-refactor/bitsandbytes-0.44.1.dev0-py3-none-manylinux_2_24_x86_64.whl'

echo "vLLM installation completed successfully!"
