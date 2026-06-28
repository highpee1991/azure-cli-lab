# Day 02 — CLI Like a Real DevOps Engineer

## What I Built
- Provisioned a full dev + staging environment for a payments project
- Created Storage Account via CLI
- Used --query to filter output professionally
- Wrote my Bash automation script

## Commands Mastered Today
az group list
az group list --output table
az group list --output tsv
az group list --output jsonc
az group list --query "[].{Name:name, Location:location}" --output table
az group list --query "[?location=='eastus'].name" --output table
az account show --query "name" --output tsv

az group update \
  --name taiwo-devops-rg \
  --tags Environment=Dev Owner=Taiwo Project=AzureCLILab

az group show \
  --name taiwo-devops-rg \
  --query "tags" \
  --output table
................................................................................
## Automation
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

# Step 2: Create Staging Resource Group
echo "📁 Creating Staging Resource Group..."
az group create \
  --name "${PROJECT}-staging-rg" \
  --location "$LOCATION" \
  --tags Environment=Staging Owner=$OWNER Project=$PROJECT

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
...............................................................................

## What Real DevOps Engineers Do With This
Real DevOps engineer uses CLI to Spin up a storage account for the dev team, Check what resources are running in production, Delete the test environment from last sprint, Create a new resource group for the new project", Filter only failed resources from 200 resources, Automate commands into script, When you have 200 resources in Azure, you need to filter and read output cleanly this thought me how to get them done. Also in In real companies, every resource has tags. Tags tell you:
Who owns it
What project it belongs to
What environment it is (dev, staging, prod), that is wht i put effort into learning this as well

## The Script I Wrote
........................................................................
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
..........................................................................

## Problems I Faced
The major problem i faced is understanding the concept, the moment i did lot of research and understood the concet every bit of it clicked

## What Clicked Today
- Provisioned a full dev + staging environment
- Created Storage Account via CLI
- Used --query to filter output professionally
- Automation script using bash (with this i automate my git flow)