data "aws_availability_zones" "azs" {}

#locals {
#  allowed_azs = [for az in data.aws_availability_zones.azs.names : az if az != "us-east-1c"]
#}