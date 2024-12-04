#!/bin/bash

# GPU Architecture
export GPU_ARCH="gfx942"  # Default for MI300X

# ROCm and Python versions
export ROCM_VERSION="6.2"
export PYTHON_VERSION="3.11"

# Environment name
export CONDA_ENV_NAME="vllm"

# Repository URLs
export VLLM_REPO="https://github.com/vllm-project/vllm.git"
export FLASH_ATTENTION_REPO="https://github.com/ROCm/flash-attention.git"

# Paths
export INSTALL_DIR="$(pwd)"
export LOG_DIR="${INSTALL_DIR}/logs"

# Create log directory if it doesn't exist
mkdir -p "${LOG_DIR}"
