output "bastion_elb_id" {
  value = "${aws_security_group.elb.id}"
}
