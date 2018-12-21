resource "aws_security_group_rule" "link_security_group_1" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["10.0.1.11/32"]
  security_group_id = "${aws_security_group.instance.id}"
}

resource "aws_security_group_rule" "link_security_group_1_out" {
  type            = "egress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.instance.id}"
}

resource "aws_security_group_rule" "link_security_group_2" {
  type            = "ingress"
  from_port       = 8080
  to_port         = 8080
  protocol        = "tcp"
  source_security_group_id = "${aws_security_group.elb.id}"
  security_group_id = "${aws_security_group.instance.id}"
}

resource "aws_security_group_rule" "link_security_group_2a_out" {
  type            = "egress"
  from_port       = 80
  to_port         = 80
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.instance.id}"
} 

resource "aws_security_group_rule" "link_security_group_2b_out" {
  type            = "egress"
  from_port       = 443
  to_port         = 443
  protocol        = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = "${aws_security_group.instance.id}"
} 

resource "aws_security_group_rule" "link_security_group_3" {
  type            = "ingress"
  from_port       = 80
  to_port         = 80
  protocol        = "tcp"
  cidr_blocks = ["${var.my_ip}"]
  security_group_id = "${aws_security_group.elb.id}"
}

resource "aws_security_group_rule" "link_security_group_3_out" {
  type            = "egress"
  from_port       = 8080
  to_port         = 8080
  protocol        = "tcp"
  source_security_group_id = "${aws_security_group.instance.id}"
  security_group_id = "${aws_security_group.elb.id}"
}

resource "aws_security_group_rule" "link_security_group_4" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["${var.my_ip}"]
  security_group_id = "${aws_security_group.elb.id}"
}

resource "aws_security_group_rule" "link_security_group_4_out" {
  type            = "egress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  source_security_group_id = "${aws_security_group.instance.id}"
  security_group_id = "${aws_security_group.elb.id}"
}

