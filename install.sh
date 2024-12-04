#!/bin/bash

set -e  # Exit on error

# Source configuration
source config/default_config.sh

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
source "${MODULES_DIR}/conda_setup.sh"

echo "Installing PyTorch..."
source "${MODULES_DIR}/pytorch_install.sh"

echo "Installing vLLM..."
source "${MODULES_DIR}/vllm_install.sh"

echo "Installing Flash Attention..."
source "${MODULES_DIR}/flash_attention_install.sh"

echo "Installation completed successfully!"
echo "Logs are available in: ${MAIN_LOG}"

# Verify installation
echo "Verifying installation..."
python -c 'import vllm; print(f"vLLM version: {vllm.__version__}")'
