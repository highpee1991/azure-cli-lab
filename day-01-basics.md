# Day 01 — Azure CLI Basics

## What I Learned
Azure CLI is a tool that lets you manage Azure resources from the terminal...

## Commands I Ran

### Check version
```bash
az --version
```
Output: 
azure-cli                         2.87.0

core                              2.87.0
telemetry                          1.1.0

Dependencies:
msal                              1.36.0
azure-mgmt-resource               24.0.0

Python location 'C:\Program Files\Microsoft SDKs\Azure\CLI2\python.exe'
Config directory 'C:\Users\Relitorin Orders\.azure'
Extensions directory 'C:\Users\Relitorin Orders\.azure\cliextensions'

Python (Windows) 3.13.13 (tags/v3.13.13:01104ce, Apr  7 2026, 19:25:48) [MSC v.1944 64 bit (AMD64)]

Legal docs and information: aka.ms/AzureCliLegal


Your CLI is up-to-date.


### Login to Azure
```bash
az login
az account show
```
Output: 
Retrieving tenants and subscriptions for the selection...

[Tenant and subscription selection]

No     Subscription name     Subscription ID                       Tenant
-----  --------------------  ------------------------------------  -----------------
[1] *  Azure subscription 1  732#####-####-####-####-############  Default Directory

The default is marked with an *; the default tenant is 'Default Directory' and subscription is 'Azure subsc
ription 1' (732#####-####-####-####-############).

Select a subscription and tenant (Type a number or Enter for no changes):

Tenant: Default Directory
Subscription: Azure subscription 1 (732#####-####-####-####-############)

[Announcements]
With the new Azure CLI login experience, you can select the subscription you want to use more easily. Learn
 more about it and its configuration at https://go.microsoft.com/fwlink/?linkid=2271236

If you encounter any problem, please open an issue at https://aka.ms/azclibug


### Create Resource Group
```bash
az group create --name taiwo-devops-rg --location eastus
```
Output: 
{
  "id": "/subscriptions/732#####-####-####-####-############/resourceGroups/taiwo-devops-rg",
  "location": "eastus",
  "managedBy": null,
  "name": "taiwo-devops-rg",
  "properties": {
    "provisioningState": "Succeeded"
  },
  "tags": null,
  "type": "Microsoft.Resources/resourceGroups"
}


## What This Taught Me
This thought me how to create resource group, make sure it is created in desired location and also make work faster for me unlike clicking through the console where i can be faced with internet issue or start clicking around makes building easier and faster

## Problems I Faced
remembring some of the command line since this is just the first time i am using this command but the more i work with it the i get to remember the command line