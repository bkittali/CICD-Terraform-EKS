variable "vpc_cidr" {
  description = "vpc CIDR"
  type        = string
}

variable "public_subnets" {
  description = "public_subnets CIDR"
  type        = list(string)
}


variable "instance_type" {
  description = "instance_type"
  type        = string
}
