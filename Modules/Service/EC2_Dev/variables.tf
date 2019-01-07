variable "instanceName" {
  default = "t2.micro"
}

variable "EC2_ami" {
  description = "AMI for EC2"
  default     = "ami-0697abcfa8916e673"
  }

variable "env" {
  default = "management"
}

variable "service_name" {
  default = "EC2"
}

variable "aws_region" {
  default = "eu-west-3"  
}

variable "my_ip" {
  default = "89.21.8.5/32"
}

variable "max_size" {
  default = 2
}

variable "min_size" {
  default = 2
}

variable "desired_capacity" {
  default = 2
}

variable "key_name" {
  default = "terraform-chall"
}