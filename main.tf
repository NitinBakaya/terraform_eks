module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.cidr_name

  azs             = var.azs_name
  private_subnets = var.private_subnets_name
  public_subnets  = var.public_subnets_name

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
module "rds"{
  source = "./module/rds/aws"
}
