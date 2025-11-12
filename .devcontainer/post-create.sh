#!/bin/bash
set -e

echo "Running post-create setup..."

# Install Azure CLI
echo "Installing Azure CLI..."
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Install kubectl
echo "Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl

# Install Helm
echo "Installing Helm..."
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# Verify installations
echo "Verifying installations..."
az version
kubectl version --client
helm version

# Run Maven build
echo "Building project with Maven..."
# Remove target directory to avoid file locking issues
rm -rf target
mvn compile -DskipTests

echo "Post-create setup complete!"
