locals {
  # CHANGE
  github_owner = "ei-show"
}

terraform {
  required_version = ">= 1.0"
  backend "s3" {
    region = "ap-northeast-1"            # CHANGE
    bucket = "ei-show-tutorial-tfaction" # CHANGE
    key    = "root/foo/v1/terraform.tfstate"
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  owner = local.github_owner
}
