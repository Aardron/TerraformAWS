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

variable "my_ip" {
  default = "213.86.15.34/32"
}

variable "max_size" {
  default = 1
}

variable "min_size" {
  default = 1
}
variable "desired_capacity" {
  default = 1
}

variable "key_name" {
  default = "terraform-chall"
}


