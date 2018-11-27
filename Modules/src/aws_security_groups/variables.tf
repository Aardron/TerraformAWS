variable "vpc_cidr_block" {
  default = "10.0.1.0/24"
}

variable "aws_region" {
  default = "eu-west-1"  
}
variable "ingress_from_port" {
  default = 443
}

variable "ingress_to_port" {
  default = 443
}

variable "egress_from_port" {
  default = 80
}

variable "egress_to_port" {
  default = 80
}






