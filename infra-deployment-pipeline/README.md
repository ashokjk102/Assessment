# Using GitLab CI/CD Pipeline for Infrastructure Deployment

This repository contains a GitLab CI/CD pipeline script to automate infrastructure deployment using Terraform. The pipeline is divided into multiple stages to print parameters, deploy infrastructure, and remove the workspace.

---

## Prerequisites

1. Ensure that your GitLab project is connected to a repository containing your Terraform configuration files.
2. Make sure that Terraform is installed in your GitLab CI/CD runner environment.

---

## How to Use

### 1. Setting Parameters

When you trigger the pipeline, GitLab will prompt you to provide the following parameters:

- **DEPLOY_TYPE**: Choose the deployment type (plan/apply/destroy). This determines whether Terraform will execute a plan, apply changes, or destroy resources.
- **MODULE**: Enter the module name (vpc, eks, ecr, efs) that you want to deploy.

### 2. Review Parameters

The pipeline will print the parameters you've provided for verification.

### 3. Deploy Infrastructure

The pipeline will execute Terraform commands based on the chosen deployment type:

- If `DEPLOY_TYPE` is set to "plan", Terraform will generate an execution plan.
- If `DEPLOY_TYPE` is set to "apply", Terraform will apply changes to the infrastructure.
- If `DEPLOY_TYPE` is set to "destroy", Terraform will generate a destruction plan to destroy the specified resources.

### 4. Remove Workspace

Once the deployment is completed, the pipeline will remove the workspace and clean up any temporary files.

---

## Notes

- Ensure that your Terraform configuration files are correctly structured and include necessary variables and resources.
