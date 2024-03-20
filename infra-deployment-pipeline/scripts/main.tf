#####################
#       VPC         #
#####################
module "vpc" {
source = "./modules/vpc"
  region               =  var.region
  vpc_cidr             = "${var.vpc_cidr}"
  public_subnets_cidr  = "${var.public_subnets_cidr}"
  private_subnets_cidr = "${var.private_subnets_cidr}"
  availability_zones   = data.aws_availability_zones.available.names
  tags                 = var.tags
}


#####################
#       ECR         #
#####################
module "ecr" {
source = "./modules/ecr"
  ecr_name               =  var.ecr_name
  tags                 = var.tags
}


#####################
#       EFS         #
#####################

module "efs" {
source = "./modules/efs"
  performance_mode = var.performance_mode
  throughput_mode  = var.throughput_mode
  subnet_id = module.vpc.public_subnet_ids
  tags = var.tags
  
}

#####################
#       EKS         #
#####################

module "eks" {
  source  = "./modules/eks"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.public_subnet_ids
  control_plane_subnet_ids = module.vpc.public_subnet_ids

  # EKS Managed Node Group(s)
  eks_managed_node_group_defaults = {
    instance_types = ["t2.micro"]
  }

  eks_managed_node_groups = {
    example = {
      min_size     = 4
      max_size     = 10
      desired_size = 4

      instance_types = ["t2.micro"]
      capacity_type  = "SPOT"
    }
  }

}


