resource "aws_db_instance" "default" {
  allocated_storage    = "${var.allocated_storage}"
  storage_type         = "${var.storage_type}"
  engine               = "${var.engine}"
  engine_version       = "${var.engine_version}"
  instance_class       = "${var.instance_class}"
  name                 = "${var.name}"
  username             = "${var.username}"
  password             = "${var.password}"
  port                 = "${var.port}"
  skip_final_snapshot  = true
  final_snapshot_identifier = "Ignore"
  db_subnet_group_name = "${aws_db_subnet_group.rds_subnet.id}"
  vpc_security_group_ids    = ["${aws_security_group.instance.id}"]

  tags{
    Name = "${var.Environment}-mysql"
  }
}