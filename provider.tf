terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region #"us-east-1"
  default_tags {
    tags = {
      Project   = var.global_project_tag #"1CD_POC"
      CreatedBy = var.global_creator_tag #"TF"
    }
  }
}

####

