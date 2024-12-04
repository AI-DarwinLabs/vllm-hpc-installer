#!/bin/bash

set -e  # Exit on error

echo "Creating Conda environment..."
conda create -n ${CONDA_ENV_NAME} python=${PYTHON_VERSION} cmake ninja -y

echo "Activating environment..."
eval "$(conda shell.bash hook)"
conda activate ${CONDA_ENV_NAME}

# Create requirements.txt if it doesn't exist
if [ ! -f "requirements.txt" ]; then
    cat > requirements.txt << EOF
numba
scipy
huggingface-hub
numpy<2
setuptools_scm
triton
EOF
fi

echo "Environment setup completed successfully!"
