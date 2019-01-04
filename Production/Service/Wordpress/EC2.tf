module "EC2" {
  source = "../../../modules/Service/EC2_Prod"
  env = "Prod"
}
