data "terraform_remote_state" "vpc" {
  backend = "s3"
    config{
    bucket = "my-booky-wooky"
    key    = "Dev/Infrastruture/dev_vpc/terraform.tfstate"
    region = "eu-west-1"
    }
}
