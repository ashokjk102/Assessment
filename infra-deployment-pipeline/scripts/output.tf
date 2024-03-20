#####################
#       OUTPUTS     #
#####################


#####################
#       EKS         #
#####################

output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_name
}

output "cluster_id" {
  value = data.aws_eks_cluster.my_cluster.id
}

# CLUSTER ARN
output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = module.eks.cluster_arn
}


# NODE SECURITY GROUP ARN
output "cluster_iam_role_name" {
  description = "IAM role name of the EKS cluster"
  value       = module.eks.cluster_iam_role_name
}

#####################
#       VPC         #
#####################

output "vpc_id" {
  value = module.vpc.vpc_id
}


#####################
#       ECR         #
#####################

output "ecr_repository_url" {
  value = module.ecr.ecr_repository_url
}

output "ecr_repository_name" {
  value = module.ecr.ecr_repository_name
}

#####################
#       EFS         #
#####################

output "efs_id" {
  value = module.efs.efs_id
}

output "mount_target_ids" {
  value = module.efs.mount_target_ids
}