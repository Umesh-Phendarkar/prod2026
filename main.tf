## Added Token for CI CD Pipeline
terraform {
  required_version = ">= 1.5.0"

  cloud {
    organization = "april2026"

    workspaces {
      name = "prod2026"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "bucket01" {
  bucket = "my-s3-bucket-march-30-2026-9090"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
