module "dev_vpc" {
  source = "../../../Modules/src/aws_vpc"
  vpc_cidr_block  = "${var.vpc_cidr_block}"
  vpc_name = "dev_vpc"
  subnet_private_name = "dev private subnet"
  subnet_public_name = "dev public subnet"
}