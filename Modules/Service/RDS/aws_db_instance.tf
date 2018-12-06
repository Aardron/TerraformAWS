resource "aws_db_instance" "default" {
  allocated_storage    = 10
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "db"
  username             = "root"
  password             = "password"
  port                 = "3030"
  skip_final_snapshot  = true
  final_snapshot_identifier = "Ignore"
  db_subnet_group_name = "${aws_db_subnet_group.rds_subnet.id}"
  vpc_security_group_ids    = ["${aws_security_group.instance.id}"]
}