# Docker Image Build Pipeline

This repository contains a GitLab CI/CD pipeline script to automate the building and pushing of Docker images to Amazon ECR (Elastic Container Registry). The pipeline is divided into multiple stages to print parameters, build Docker images, and remove the workspace.

---

## Stages

1. **Print Parameters**
2. **Build Image**
3. **Remove Workspace**

---

## Variables

- **AWS_DEFAULT_REGION**: Provide the AWS region where the ECR repository is located.
- **CI_REGISTRY_IMAGE**: Provide the URI of the ECR repository.
- **IMAGE_NAME_PREFIX**: Provide the prefix for the Docker image names.
- **BUILD_TYPE**: Available build types - appserver, webserver, dbserver.

---

## Pipeline Execution

### 1. Print Parameters

This stage prints the parameters provided for verification.

### 2. Build Image

This stage builds the Docker images based on the specified build type:

- For `webserver` build type, the Docker image is built from the `./docker/webserver` directory.
- For `appserver` build type, the Docker image is built from the `./docker/appserver` directory.
- For `dbserver` build type, the Docker image is built from the `./docker/dbserver` directory.

### 3. Remove Workspace

Once the image build process is completed, this stage removes the workspace and cleans up any temporary files.

---

**Note:** Ensure that the appropriate Dockerfiles are available in the respective directories for each build type.

