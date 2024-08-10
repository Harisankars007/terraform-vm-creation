# Terraform Azure VM Setup

This repository contains Terraform configuration files to create and manage a Virtual Machine (VM) on Microsoft Azure.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Usage](#usage)
- [Files and Directories](#files-and-directories)
- [Troubleshooting](#troubleshooting)
- [Cleaning Up](#cleaning-up)
- [Additional Resources](#additional-resources)

## Prerequisites

Before you begin, ensure you have the following installed:

- [Terraform](https://www.terraform.io/downloads.html) (v1.0.0 or later)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) (to authenticate with Azure)
- A Microsoft Azure account with sufficient privileges to create resources.

## Setup

1. **Clone the Repository**

    ```bash
    git clone https://github.com/Harisankars007/Terraform-hari.git
    cd Terraform-hari
    ```

2. **Configure Azure Authentication**

    Authenticate using the Azure CLI:

    ```bash
    az login
    ```

3. **Initialize Terraform**

    Run the following command to initialize the working directory. This will download the necessary provider plugins.

    ```bash
    terraform init
    ```

## Usage

### Creating a Virtual Machine

1. **Customize the Configuration**

   If needed, modify the `main.tf` file to change the resource names, VM size, location, or other parameters.

2. **Validate the Configuration**

    Ensure the configuration files are correct:

    ```bash
    terraform validate
    ```

3. **Create an Execution Plan**

    Review what Terraform will do before applying:

    ```bash
    terraform plan
    ```

4. **Apply the Configuration**

    Apply the configuration to create the resources:

    ```bash
    terraform apply
    ```

5. **Accessing the VM**

   After the VM is created, you can access it via SSH (for Linux VMs) or RDP (for Windows VMs). Use the output IP address or DNS name provided after the apply.

    Example SSH command:

    ```bash
    ssh azureuser@<public_ip_address>
    ```

### Destroying the Resources

To destroy all the resources created by this Terraform configuration:

```bash
terraform destroy
