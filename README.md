# vLLM HPC Installer

Automated installation script for vLLM on HPC systems with ROCm support. This installer specifically targets AMD MI300X GPUs and similar architectures in HPC environments.

## Features

- Automated installation of vLLM and all dependencies
- ROCm support with PyTorch nightly builds
- Flash Attention integration
- Anaconda environment management
- Comprehensive logging and error handling
- HPC module management
- Support for AMD MI300X GPUs (customizable for other architectures)

## Prerequisites

- Access to an HPC system with ROCm support
- AMD GPU (default configuration for MI300X)
- Git
- Anaconda/Miniconda
- Module environment system

## Quick Start

1. Clone the repository:
```bash
git clone https://github.com/yourusername/vllm-hpc-installer.git
cd vllm-hpc-installer
```

2. Make the script executable:
```bash
chmod +x install.sh
```

3. Run the installer:
```bash
./install.sh
```

## Configuration

You can customize the installation by editing `config/default_config.sh`:

- `PYTHON_VERSION`: Python version (default: 3.11)
- `PYTORCH_ROCM_VERSION`: ROCm version for PyTorch (default: 6.2)
- `GPU_ARCH`: GPU architecture (default: gfx942 for MI300X)
- `CONDA_ENV_NAME`: Name of the conda environment (default: vllm)

## Directory Structure

```
vllm-hpc-installer/
├── install.sh           # Main installation script
├── config/             # Configuration files
├── modules/            # Installation modules
└── docs/              # Documentation
```

## Documentation

- [Installation Guide](docs/installation_guide.md)
- [Contributing Guidelines](docs/CONTRIBUTING.md)
- [Changelog](docs/CHANGELOG.md)

## Support

For issues and feature requests, please use the [GitHub Issues](https://github.com/yourusername/vllm-hpc-installer/issues) page.

## Contributing

Contributions are welcome! Please read our [Contributing Guidelines](docs/CONTRIBUTING.md) before submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- vLLM Project Team
- ROCm/AMD Team
- Flash Attention developers
- HPC Community

## Citation

If you use this installer in your research, please cite:

```bibtex
@software{vllm_hpc_installer,
  author = {Your Name},
  title = {vLLM HPC Installer},
  year = {2024},
  publisher = {GitHub},
  url = {https://github.com/yourusername/vllm-hpc-installer}
}
