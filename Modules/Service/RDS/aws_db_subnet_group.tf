resource "aws_db_subnet_group" "rds_subnet" {
    subnet_ids =  ["${split(",", element(data.terraform_remote_state.vpc.private_subnet, count.index))}"]

    

  tags {
    Name = "${var.rds_name}_RDS"
  }
}
