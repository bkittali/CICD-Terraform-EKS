data "aws_availability_zones" "azs" {}

locals {
  allowed_azs = [for az in data.aws_availability_zones.azs.names : az if az != "us-east-1c"]
}

data "aws_eks_cluster" "cluster" {
  name = module.eks.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}