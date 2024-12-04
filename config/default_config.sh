#!/bin/bash

# Python and Conda Configuration
export PYTHON_VERSION="3.11"
export CONDA_ENV_NAME="vllm"

# ROCm and GPU Configuration
export PYTORCH_ROCM_VERSION="6.2"
export GPU_ARCH="gfx942"  # Default for MI300X

# Repository URLs
export VLLM_REPO="https://github.com/vllm-project/vllm.git"
export FLASH_ATTENTION_REPO="https://github.com/ROCm/flash-attention.git"

# Installation Paths
export INSTALL_DIR="$(pwd)"
export LOG_DIR="${INSTALL_DIR}/logs"
export MODULES_DIR="${INSTALL_DIR}/modules"

# Module Configuration
export ANACONDA_MODULE="anaconda3/2023.09-0"
export CPE_MODULE="cpe/24.07"
export ROCM_MODULE="amd-mixed/6.2.1"

# Create necessary directories
mkdir -p "${LOG_DIR}"
