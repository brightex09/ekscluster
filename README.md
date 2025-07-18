# 🚀 Terraform EKS Cluster Setup

This project provisions a **Kubernetes cluster on AWS using Terraform**, following Infrastructure as Code (IaC) best practices.

## 🛠️ Features

- ✅ Deploys an EKS cluster on AWS
- ✅ Customizable AWS region and cluster name via `variables.tf`
- ✅ Secure and versioned state files
- ✅ `.gitignore` configured to avoid committing sensitive or local files

---

## 📁 Project Structure

eks-cluster/
- main.tf # Main Terraform configuration
- variables.tf # Input variables for customization
- terraform.tfstate # Local Terraform state (ignored in Git)
- terraform.tfstate.backup
