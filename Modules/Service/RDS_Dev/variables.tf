variable "rds_name" {
  default = "RDS_Dev"
}
 
variable "my_ip" {
  default = "89.21.8.5/32"
}

variable "aws_region" {
  default = "eu-west-3"  
}

variable "Environment" {
  default = ""
}

variable "allocated_storage" {
  default = 10
}

variable "storage_type" {
  default = "gp2"
}

variable "engine" {
  default = "mysql"
}

variable "engine_version" {
  default = "5.7"
}

variable "instance_class" {
  default = "db.t2.micro"
}

variable "name" {
  default = "mysqlDB"
}

variable "username" {
  default = "root"
}

variable "password" {
  default = "password"
}

variable "port" {
  default = "3030"
}



