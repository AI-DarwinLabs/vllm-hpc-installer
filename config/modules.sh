#!/bin/bash

# Source configuration
source "$(dirname "$0")/default_config.sh"

# Purge all modules first
module purge

# Load required modules
module load ${CPE_MODULE}
module load craype-accel-amd-gfx90a
module load craype-x86-trento
module load PrgEnv-gnu
module load ${ROCM_MODULE}
module load ${ANACONDA_MODULE}
module load cmake

# Verify modules are loaded
module list
