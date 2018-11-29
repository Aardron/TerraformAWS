terraform {
  backend "s3" {
    bucket = "my-booky-wooky"
    key    = "Management/Service/Jenkins/terraform.tfstate"
    region = "eu-west-1"
  }
}