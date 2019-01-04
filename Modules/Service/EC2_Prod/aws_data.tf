data "terraform_remote_state" "vpc" {
  backend = "s3"
    config{
    bucket = "my-booky-wooky"
    key    = "Production/Infrastruture/production_vpc/terraform.tfstate"
    region = "eu-west-1"
    }
}

data "terraform_remote_state" "RDS" {
  backend = "s3"
    config{
    bucket = "my-booky-wooky"
    key    = "Production/Service/RDS/terraform.tfstate"
    region = "eu-west-1"
    }
}

