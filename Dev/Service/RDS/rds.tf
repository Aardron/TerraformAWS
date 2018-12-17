module "rds" {
  source = "../../../modules/Service/RDS"
   rds_name = "dev"
   vpc_path = "Dev/Infrastruture/dev_vpc/terraform.tfstate"
   EC2_path = "Dev/Service/Wordpress/terraform.tfstate"
}

