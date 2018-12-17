resource "aws_db_subnet_group" "rds_subnet" {
  
  subnet_ids =  ["${slice(data.terraform_remote_state.vpc.private_subnet, 0, 2)}"]

    

  tags {
    Name = "${var.rds_name}_RDS"
  }
}
