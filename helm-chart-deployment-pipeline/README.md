# GitLab CI/CD Pipeline for Helm Chart Deployment to EKS

This repository contains a GitLab CI/CD pipeline script to automate deployment of Helm charts to Amazon EKS. The pipeline is divided into multiple stages to print parameters, deploy infrastructure, and remove the workspace.

---

## Stages

1. **Print Parameters**
2. **Deploy Infrastructure**
3. **Remove Workspace**

---

## Variables

- **HELM_CHART_PATH**: Path to the Helm chart directory.
- **EKS_NAME**: Provide the name of the Amazon EKS cluster to deploy the Helm chart.
- **REGION**: Provide the name of the Amazon Region, for example: ap-south.
- **HELM_RELEASE_NAME**: Enter the Helm release name, for example: 000000000.dkr.ecr.ap-south-1.amazonaws.com/.
- **HELM_NAMESPACE**: Enter the Helm namespace.
- **REGISTRY_IMAGE**: Provide the ECR repository URI.
- **APPSERVER_REPO**: Provide the repository name for the app server.
- **APPSERVER_TAG**: Provide the tag for the app server repository.
- **WEBSERVER_REPO**: Provide the repository name for the web server.
- **WEBSERVER_TAG**: Provide the tag for the web server repository.
- **DBSERVER_REPO**: Provide the repository name for the database server.
- **DBSERVER_TAG**: Provide the tag for the database server repository.

---

## Pipeline Execution

### 1. Print Parameters

This stage prints the parameters provided for verification.

### 2. Deploy Infrastructure

This stage deploys the Helm chart to Amazon EKS with the specified parameters:

- Amazon EKS cluster name
- Helm release name
- Helm namespace
- ECR repository URI
- Repository and tag names for the app, web, and database servers.

### 3. Remove Workspace

Once the deployment is completed, this stage removes the workspace and cleans up any temporary files.

---

**Note:** Ensure all `values.yml` files are correctly configured within the Helm chart directory before deployment.


