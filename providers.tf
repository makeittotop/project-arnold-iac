terraform {
  backend "remote" {
    organization = "project-arnold"

    workspaces {
      name = "github-wf"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.0"
    }
  }
}

provider "aws" {
  region = var.region
}