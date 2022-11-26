provider "aws" {
    region = var.region
    version = "~> 4.0"
    
}
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.11.0"
  #version = "~> 2.78"

  # VPC Basic Details
  name = "${var.system_name}-${var.env}"
  cidr = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets
  enable_nat_gateway = true

}
terraform{
    backend "s3" {
    bucket = "assmnt"
    key = "terraform/terraform.tfstate"

    region = "us-east-2"

 }
}

