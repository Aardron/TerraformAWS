data "terraform_remote_state" "vpc" {
  backend = "s3"
    config{
    bucket = "my-booky-wooky"
    key    = "Dev/Infrastruture/dev_vpc/terraform.tfstate"
    region = "eu-west-1"
    }
}

data "terraform_remote_state" "EC2" {
  backend = "s3"
    config{
    bucket = "my-booky-wooky"
    key    = "Dev/Service/Wordpress/terraform.tfstate"
    region = "eu-west-1"
    }
}
