variable "region" {
  description = "Provide AWS region to deploy"
  type        = string
  default     = "ap-south-1"
}


#####################
#       VPC         #
#####################

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "ASSESSMENT-VPC"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets_cidr" {
  description = "Provide public subnet CIDR"
  type        = list
  default     =  ["10.0.0.0/18","10.0.64.0/18"]
}

variable "private_subnets_cidr" {
  description = "Provide private subnet CIDR"
  type        = list
  default     = ["10.0.128.0/18", "10.0.192.0/18"]
}

#####################
#       EKS         #
#####################

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "ASSESSMENT-CLUSTER"
}

variable "cluster_version" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "1.29"
}


variable "control_plane_subnet_ids" {
  description = "Provide control plane Subnet Ids"
  type        = any
  default     = ["subnet-0ba9a0992d9798dae"]
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Name   = "CODING-ASSESSMENT"
  }
}

variable "cluster_endpoint_public_access" {
  description = "Cluster endpoint public access"
  type        = string
  default     = "true"
}

variable "cluster_addons" {
  description = "Cluster addons"
  type        = any
  default     = { 
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }
}

#####################
#       ECR         #
#####################

variable "ecr_name" {
  description = "Name of the ECR"
  type        = string
  default     = "coding-assessment"
}

#####################
#       EFS         #
#####################

variable "performance_mode" {
  description = "Provide efs performance mode"
  type        = string
  default     = "generalPurpose"
}

variable "throughput_mode" {
  description = "Provide efs throughput mode"
  type        = string
  default     = "bursting"
}