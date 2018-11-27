module "bastion" {
  source = "../../../modules/Service/Bastion"

  env           = "management"
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

