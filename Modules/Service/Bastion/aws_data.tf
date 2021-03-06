data "terraform_remote_state" "vpc" {
  backend = "s3"
    config{
    bucket = "my-booky-wooky"
    key    = "Management/Infrastruture/management_vpc/terraform.tfstate"
    region = "eu-west-1"
    }
}

data "terraform_remote_state" "jenk" {
  backend = "s3"
    config{
    bucket = "my-booky-wooky"
    key    = "Management/Service/Jenkins/terraform.tfstate"
    region = "eu-west-1"
    }
}