terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.21"
    }
  }

  backend "s3" {
    bucket = "test-state-terraform-128754102"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "cloud"
}
