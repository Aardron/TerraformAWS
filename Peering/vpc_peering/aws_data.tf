data "terraform_remote_state" "management_vpc" {
  backend = "s3"
    config{
            bucket = "my-booky-wooky"
            key    = "Management/Infrastruture/management_vpc/terraform.tfstate"
            region = "eu-west-1"
    }
}

data "terraform_remote_state" "dev_vpc" {
  backend = "s3"
    config{
            bucket = "my-booky-wooky"
            key    = "Dev/Infrastruture/dev_vpc/terraform.tfstate"
            region = "eu-west-1"
    }
}

data "terraform_remote_state" "prod_vpc" {
  backend = "s3"
    config{
            bucket = "my-booky-wooky"
            key    = "Production/Infrastruture/production_vpc/terraform.tfstate"
            region = "eu-west-1"
    }
}