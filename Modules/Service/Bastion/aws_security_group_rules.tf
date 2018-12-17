resource "aws_security_group_rule" "link_security_group_1" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
source_security_group_id = "${aws_security_group.elb.id}"
security_group_id = "${aws_security_group.instance.id}"
}

resource "aws_security_group_rule" "link_security_group_1_out" {
  type            = "egress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  source_security_group_id = "${aws_security_group.elb.id}"
  security_group_id = "${aws_security_group.instance.id}"
}

resource "aws_security_group_rule" "link_security_group_2" {
  type            = "ingress"
  from_port       = 443
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks = ["${var.my_ip}"]
  security_group_id = "${aws_security_group.bastion.id}"
}

resource "aws_security_group_rule" "link_security_group_2_out" {
  type            = "egress"
  from_port       = 443
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks = ["${var.my_ip}"]
  security_group_id = "${aws_security_group.bastion.id}"
}