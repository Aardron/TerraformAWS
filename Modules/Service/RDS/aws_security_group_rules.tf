resource "aws_security_group_rule" "link_security_group_1" {
  type            = "ingress"
  from_port       = 3030
  to_port         = 3030
  protocol        = "tcp"
  security_group_id = "${aws_security_group.instance.id}"
  source_security_group_id = "${data.terraform_remote_state.EC2.EC2_id}"
}

resource "aws_security_group_rule" "link_security_group_1_out" {
  type            = "egress"
  from_port       = 3030
  to_port         = 3030
  protocol        = "tcp"
  security_group_id = "${aws_security_group.instance.id}"
  source_security_group_id = "${data.terraform_remote_state.EC2.EC2_id}"
}

