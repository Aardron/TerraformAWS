module "management_vpc" {
  source = "../../../Modules/src/aws_vpc"
  vpc_cidr_block  = "${var.vpc_cidr_block}"
  vpc_name = "management_vpc"
  Environment = "managment"
  peering_destination = ["10.0.3.0/24","10.0.2.0/24"]
  peering_id = "pcx-08350f79ba00017d7"
}