module "bastion" {
  source = "../../../modules/Service/Bastion"
  env    = "management"
}

