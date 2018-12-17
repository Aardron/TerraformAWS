module "management_vpc" {
  source = "../../../Modules/src/aws_vpc"
  vpc_cidr_block  = "${var.vpc_cidr_block}"
  vpc_name = "management_vpc"
  subnet_private_name = "management private subnet"
  subnet_public_name = "management public subnet"
}