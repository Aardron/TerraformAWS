variable "instanceName" {
  default = "t2.micro"
}

variable "Jenkins_ami" {
  description = "AMI for Jenkins"
  default     = "ami-2757f631"
  }

variable "env" {
  default = "management"
}

variable "service_name" {
  default = "Jenkins"
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

