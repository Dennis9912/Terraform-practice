provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source              = "./VPC"
  vpc_cidr_block      = var.vpc_cidr_block
  public_cidr_block   = var.public_cidr_block
  private_cidr_block  = var.private_cidr_block
  backend_cidr_block  = var.backend_cidr_block
  availability_zone   = var.availability_zone
  tags = local.project_tags
}