variable "vpc_cidr_block" {
  default = "10.0.0.0/24"
}

variable "aws_region" {
  default = "eu-west-3"  
}

variable "vpc_name" {
  default = "vpc"
}

variable "subnet_private_name" {
  default = "private subnet"
}

variable "subnet_public_name" {
  default = "public subnet"
}

