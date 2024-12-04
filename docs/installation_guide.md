# Installation Guide

This guide provides detailed instructions for installing vLLM on HPC systems using our installer.

## System Requirements

- HPC system with ROCm support
- AMD GPU (MI300X or compatible)
- Git
- Anaconda/Miniconda installation
- Module system with required modules:
  - Anaconda (anaconda3/2023.09-0)
  - ROCm (amd-mixed/6.2.1)
  - CPE (cpe/24.07)

## Installation Steps

1. **Prepare the Environment**
   ```bash
   # Clone the repository
   git clone https://github.com/AI-DarwinLabs/vllm-hpc-installer.git
   cd vllm-hpc-installer
   
   # Make the installer executable
   chmod +x install.sh
   ```

2. **Configuration (Optional)**
   - Edit `config/default_config.sh` if you need to customize:
     - Python version
     - ROCm version
     - GPU architecture
     - Conda environment name

3. **Run the Installer**
   ```bash
   ./install.sh
   ```

4. **Verify Installation**
   ```bash
   # Activate the conda environment
   conda activate vllm
   
   # Verify vLLM installation
   python -c 'import vllm; print(vllm.__version__)'
   ```

## Installation Components

The installer sets up:
1. Conda environment with Python 3.11
2. PyTorch with ROCm support
3. vLLM
4. Flash Attention
5. Additional dependencies

## Troubleshooting

### Common Issues

1. **Module Load Errors**
   - Ensure all required modules are available on your system
   - Check module versions match your configuration

2. **CUDA/ROCm Issues**
   - Verify ROCm installation
   - Check GPU architecture setting matches your hardware

3. **Installation Logs**
   - Check logs in the `logs/` directory for detailed error messages

### Getting Help

If you encounter issues:
1. Check the logs in `logs/` directory
2. Consult the [GitHub Issues](https://github.com/AI-DarwinLabs/vllm-hpc-installer/issues) page
3. Submit a new issue with:
   - Error messages
   - System information
   - Installation logs
