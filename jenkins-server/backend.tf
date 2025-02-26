terraform {
  backend "s3" {
    bucket = "gcg-test-todobucket"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}
