module "rds" {
  source = "../../../modules/Service/RDS"
   rds_name = "prod"
   vpc_path = "${var.vpc_path}"
   EC2_path = "${var.EC2_path}"
}

