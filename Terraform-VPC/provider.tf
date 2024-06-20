terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.54.1"
    }
  }
  backend "s3" {
    bucket = "my-terraform-s-bucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}