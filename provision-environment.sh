#!/bin/bash

# ============================================
# Azure Environment Provisioner
# Author: Taiwo
# Description: Provisions dev environment
#              for any project automatically
# ============================================

# Variables — change these for any project
PROJECT="payments"
OWNER="Taiwo"
LOCATION="eastus"
STORAGE_NAME="taiwo${PROJECT}dev001"

echo "🚀 Starting provisioning for project: $PROJECT"

# Step 1: Create Dev Resource Group
echo "📁 Creating Dev Resource Group..."
az group create \
  --name "${PROJECT}-dev-rg" \
  --location "$LOCATION" \
  --tags Environment=Dev Owner=$OWNER Project=$PROJECT



# Step 1: Create Dev Resource Group
echo "📁 Creating Dev Resource Group..."
az group create \
  --name "${PROJECT}-dev-rg" \
  --location "$LOCATION" \
  --tags Environment=Dev Owner=$OWNER Project=$PROJECT



# Step 3: Create Storage Account
echo "💾 Creating Storage Account..."
az storage account create \
  --name "$STORAGE_NAME" \
  --resource-group "${PROJECT}-dev-rg" \
  --location "$LOCATION" \
  --sku Standard_LRS \
  --kind StorageV2 \
  --tags Environment=Dev Owner=$OWNER Project=$PROJECT



# Step 4: Confirm everything
echo "✅ Provisioning complete. Here is your environment:"
az group list --output table

echo "🎉 Done! Project $PROJECT environment is ready."