#!/bin/bash -ex

sudo sed -i -e 's/^Defaults\tsecure_path.*$//' /etc/sudoers

# Check Python

echo "Python Version:"
python --version
pip install --user sregistry[all]
sregistry version

echo "sregistry Version:"

# Install Singularity
export VERSION=3.7.0 &&
    wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-${VERSION}.tar.gz && \
    tar -xzf singularity-${VERSION}.tar.gz && \
    cd singularity
