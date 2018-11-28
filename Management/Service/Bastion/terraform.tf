terraform {
  backend "s3" {
    bucket = "my-booky-wooky"
    key    = "Management/Service/Bastion/terraform.tfstate"
    region = "eu-west-1"
  }
}