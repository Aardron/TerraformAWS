module "production_vpc" {
  source = "../../../Modules/src/aws_vpc"
  vpc_cidr_block  = "${var.vpc_cidr_block}"
  vpc_name = "production_vpc"
  subnet_private_name = "prod private subnet"
  subnet_public_name = "prod public subnet"
}