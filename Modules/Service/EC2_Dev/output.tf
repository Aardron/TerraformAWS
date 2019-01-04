output "EC2_elb_id" {
  value = "${aws_security_group.elb.id}"
}
