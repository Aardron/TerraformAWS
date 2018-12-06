variable "rds_name" {
  default = "RDS"
}
 
variable "my_ip" {
  default = "89.21.8.5/32"
}

variable "aws_region" {
  default = "eu-west-3"  
}

# variable "vpc_private_subnet_ids" {
#   default = "${data.terraform_remote_state.vpc.private_subnet}"
# }

