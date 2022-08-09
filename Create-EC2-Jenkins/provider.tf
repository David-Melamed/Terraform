terraform {
    cloud {
    organization = "David-DevOps-learning-path"

    workspaces {
      name = "aws-ec2-creation-Jenkins"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

