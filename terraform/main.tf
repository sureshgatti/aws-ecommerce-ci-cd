provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  name    = "ecommerce-vpc"
  cidr    = "10.0.0.0/16"
  azs     = ["ap-south-1a", "ap-south-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
}

resource "aws_eks_cluster" "eks" {
  name     = "ecommerce-cluster"
  role_arn = var.eks_role_arn
  vpc_config {
    subnet_ids = module.vpc.private_subnets
  }
}
