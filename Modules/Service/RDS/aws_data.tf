data "terraform_remote_state" "vpc" {
  backend = "s3"
    config{
    bucket = "my-booky-wooky"
    key    = "${var.vpc_path}"
    region = "eu-west-1"
    }
}

data "terraform_remote_state" "EC2" {
  backend = "s3"
    config{
    bucket = "my-booky-wooky"
    key    = "${var.EC2_path}"
    region = "eu-west-1"
    }
}
