module "production_vpc" {
  source = "../../../Modules/src/aws_vpc"
  vpc_cidr_block  = "${var.vpc_cidr_block}"
  vpc_name = "production_vpc"
  Environment = "Production"
  peering_destination = ["10.0.1.0/24"]
  peering_id = "pcx-0908f2f715f0f7823"
}