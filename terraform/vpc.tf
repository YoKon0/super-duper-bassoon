module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.19.0"


  name = "vpc-${var.environment}"
  cidr = var.vpc_cidr

  azs             = var.vpc_azs
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets
  database_subnets = var.vpc_database_subnets

  enable_nat_gateway = true

  tags = {
    Terraform = "true"
    Environment = var.environment
  }
}
