#!/bin/bash

set -e  # Exit on error

echo "Installing PyTorch with ROCm support..."
pip install --pre torch torchvision torchaudio \
    --index-url https://download.pytorch.org/whl/nightly/rocm${ROCM_VERSION} -U

# Install AMD SMI
echo "Installing AMD SMI..."
if [ -d "amd_smi" ]; then
    rm -rf amd_smi
fi

if [ -d "/opt/rocm/share/amd_smi" ]; then
    cp -r /opt/rocm/share/amd_smi ./
    cd amd_smi
    pip install .
    cd ..
else
    echo "Warning: AMD SMI directory not found in /opt/rocm/share/"
fi

# Verify PyTorch installation
echo "Verifying PyTorch installation..."
python -c "import torch; print(f'PyTorch version: {torch.__version__}'); print(f'ROCm available: {torch.cuda.is_available()}')"

echo "PyTorch installation completed successfully!"
