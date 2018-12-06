terraform {
  backend "s3" {
    bucket = "my-booky-wooky"
    key    = "Dev/Service/Wordpress/terraform.tfstate"
    region = "eu-west-1"
  }
}