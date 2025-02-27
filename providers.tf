terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.75.0, <5.84.0, !=5.83.0"
    }
  }

  #terraform version
  required_version = "~>1.10.3"
}

provider "aws" {
  region  = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}
