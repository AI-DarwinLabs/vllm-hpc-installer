#!/bin/bash

set -e  # Exit on error

# Source configuration
source config/config.sh

# Start installation
echo "Starting vLLM installation process..."

# Create log files
MAIN_LOG="${LOG_DIR}/install_$(date +%Y%m%d_%H%M%S).log"
exec 1> >(tee -a "$MAIN_LOG")
exec 2> >(tee -a "$MAIN_LOG" >&2)

# Load modules
source config/modules.sh

# Run installation steps
echo "Setting up environment..."
source scripts/setup_env.sh

echo "Installing PyTorch..."
source scripts/install_torch.sh

echo "Installing vLLM..."
source scripts/install_vllm.sh

echo "Installing Flash Attention..."
source scripts/install_flash.sh

echo "Installation completed successfully!"
echo "Logs are available in: ${MAIN_LOG}"

# Verify installation
echo "Verifying installation..."
python -c 'import vllm; print(f"vLLM version: {vllm.__version__}")'
