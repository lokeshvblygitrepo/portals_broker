# Providers

provider "aws" {
  region  = data.terraform_remote_state.config.outputs.default_region
  profile = data.terraform_remote_state.config.outputs.run_env
}

data "aws_route53_zone" "subdomain-hz" {
  name         = "${data.terraform_remote_state.config.outputs.run_env}.corvesta.net."
  private_zone = true
}

# Backend

terraform {

  backend "s3" {
    region = "us-east-1"

    bucket = "cv-terraform-backend"
    key    = "mgmt-repositories/terraform.tfstate"

    dynamodb_table       = "cv-terraform-state"
    workspace_key_prefix = "terraform-state"
  }
}

#Config
data "terraform_remote_state" "config" {
  backend = "s3"

  config = {
    bucket = "cv-terraform-backend"
    key    = "terraform-state/${var.workspace}/config/terraform.tfstate"
    region = "us-east-1"
  }
}
#VPC
data "terraform_remote_state" "dev_vpc" {
  backend = "s3"

  config = {
    bucket = "cv-terraform-backend"
    key    = "terraform-state/development/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "qa_vpc" {
  backend = "s3"

  config = {
    bucket = "cv-terraform-backend"
    key    = "terraform-state/qa/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "sandbox_vpc" {
  backend = "s3"

  config = {
    bucket = "cv-terraform-backend"
    key    = "terraform-state/sand/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "staging_vpc" {
  backend = "s3"

  config = {
    bucket = "cv-terraform-backend"
    key    = "terraform-state/staging/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "training_vpc" {
  backend = "s3"

  config = {
    bucket = "cv-terraform-backend"
    key    = "terraform-state/training/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "devops_vpc" {
  backend = "s3"

  config = {
    bucket = "cv-terraform-backend"
    key    = "terraform-state/devops/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "preprod_vpc" {
  backend = "s3"

  config = {
    bucket = "cv-terraform-backend"
    key    = "terraform-state/preprod/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "aws_caller_identity" "current" {
}

