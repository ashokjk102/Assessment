# Availability Zones
data "aws_availability_zones" "available" {}

# Cluster Name
data "aws_eks_cluster" "my_cluster" {
  name = module.eks.cluster_name
  depends_on = [module.eks]
}

# Cluster ID
data "aws_eks_cluster" "cluster" {
  name = data.aws_eks_cluster.my_cluster.id
}

# Cluster ID
data "aws_eks_cluster_auth" "cluster" {
  name = data.aws_eks_cluster.my_cluster.id
}