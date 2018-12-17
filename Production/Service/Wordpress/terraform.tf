terraform {
  backend "s3" {
    bucket = "my-booky-wooky"
    key    = "Production/Service/Wordpress/terraform.tfstate"
    region = "eu-west-1"
  }
}