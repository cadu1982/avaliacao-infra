terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.2.0"
    }
  }

  backend "s3" {
    bucket = "entrega-infra-remote-state"
    key    = "ebs-infra/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "carlos"
      managed-by = "Terraform"
    }
  }
}