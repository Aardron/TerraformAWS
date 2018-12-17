
variable "aws_region" {
  default = "eu-west-3"  
}
 variable "vpc_path" {
  default = "Production/Infrastruture/production_vpc/terraform.tfstate"
}

variable "EC2_path" {
  default = "Production/Service/Wordpress/terraform.tfstate"
}
