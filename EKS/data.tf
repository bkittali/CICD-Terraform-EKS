data "aws_availability_zones" "azs" {}

locals {
  allowed_azs = [for az in data.aws_availability_zones.azs.names : az if az != "us-east-1c"]
}

#data "aws_eks_node_group" "example" {
#  cluster_name    = "my-eks-cluster"
#  node_group_name = "nodes"
#}

data "aws_ssm_parameter" "eks_ami" {
  name = "/aws/service/eks/optimized-ami/1.27/amazon-linux-2/recommended/image_id"
}
