variable "rds_name" {
  default = "RDS"
}
 
variable "my_ip" {
  default = "89.21.8.5/32"
}

variable "aws_region" {
  default = "eu-west-3"  
}

variable "vpc_path" {
  default = "Dev/Infrastructure/dev_vpc/terraform.tfstate"
}

variable "EC2_path" {
  default = "Dev/Service/RDS/terraform.tfstate"
}
