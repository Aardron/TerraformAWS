variable "instanceName" {
  default = "t2.micro"
}

variable "bastion_ami" {
  description = "AMI for bastion"
  default     = "ami-969ab1f6"
  }

variable "env" {
  default = "modules"
}

variable "service_name" {
  default = "bastion"
}

variable "aws_region" {
  default = "eu-west-1"  
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

