#!/bin/bash
set -e

echo "==================================="
echo "Verifying Dev Container Setup"
echo "==================================="
echo ""

echo "✓ Checking Java version..."
java -version

echo ""
echo "✓ Checking Maven version..."
mvn -version

echo ""
echo "✓ Checking Azure CLI..."
az version --output table

echo ""
echo "✓ Checking kubectl..."
kubectl version --client

echo ""
echo "✓ Checking Helm..."
helm version

echo ""
echo "✓ Checking Git..."
git --version

echo ""
echo "==================================="
echo "All tools verified successfully! ✓"
echo "==================================="
