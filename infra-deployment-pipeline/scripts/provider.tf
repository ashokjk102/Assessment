######################
#     Region         #
######################

provider "aws" {
  region = var.region
}

######################
# Statefile Provider #
######################

terraform {
  backend "s3" {
    bucket         = "assessment-01"
    key            = "task-01/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    #dynamodb_table = "your-lock-table-name"
  }
}

#################
# Helm Provider #
#################

provider "helm" {
  kubernetes {
    host                   = data.aws_eks_cluster.cluster.endpoint
    cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
    token                  = data.aws_eks_cluster_auth.cluster.token
#    load_config_file       = false
  }
}