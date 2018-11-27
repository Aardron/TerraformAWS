terraform {
    backend "s3" {
    bucket = "my-booky-wooky"
    key    = "vpc/terraform.tfstate"
    region = "eu-west-1"
    }
}