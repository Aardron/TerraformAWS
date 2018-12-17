variable "instanceName" {
  default = "t2.micro"
}

variable "bastion_ami" {
  description = "AMI for bastion"
  default     = "ami-0697abcfa8916e673"
  }

variable "env" {
  default = "modules"
}

variable "service_name" {
  default = "bastion"
}

variable "aws_region" {
  default = "eu-west-3"  
}
 
variable "ingress_from_port" {
  default = 8080
}

variable "ingress_to_port" {
  default = 8080
}

variable "egress_from_port" {
  default = 22
}

variable "egress_to_port" {
  default = 22
}

variable "root_password" {
  default ="scam"
}

variable "my_ip" {
  default = "213.86.15.34/32"
}