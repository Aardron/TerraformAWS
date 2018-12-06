resource "aws_db_subnet_group" "rds_subnet" {
    subnet_ids = ["${data.terraform_remote_state.vpc.private_subnet}"]

  tags {
    Name = "${var.rds_name}_RDS"
  }
}
