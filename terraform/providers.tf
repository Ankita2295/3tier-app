terraform {
  backend "s3" {
     bucket         = "ankita-test"
     key            = "terraform.tfstate"
     region         = "eu-north-1"
   }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"

    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
 # region     = var.region
  region = var.region
  profile        = "default"
}
