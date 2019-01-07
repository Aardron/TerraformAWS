module "dev_vpc" {
  source = "../../../Modules/src/aws_vpc"
  vpc_cidr_block  = "${var.vpc_cidr_block}"
  vpc_name = "dev_vpc"
  Environment = "Dev" 
  peering_destination = ["10.0.1.0/24"]
  peering_id = "pcx-08350f79ba00017d7"
}