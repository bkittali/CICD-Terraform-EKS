terraform {
  backend "s3" {
    bucket = "gcg-test-todobucket"
    key    = "EKS/terraform.tfstate"
    region = "us-east-1"
  }
}
