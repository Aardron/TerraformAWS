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

# resource "aws_security_group_rule" "link_security_group_2" {
#   type            = "ingress"
#   from_port       = 443
#   to_port         = 443
#   protocol        = "tcp"
#   source_security_group_id = "${data.terraform_remote_state.bast.bastion_elb_id}"
#   security_group_id = "${aws_security_group.bastion.id}"
# }

# resource "aws_security_group_rule" "link_security_group_2_out" {
#   type            = "egress"
#   from_port       = 443
#   to_port         = 443
#   protocol        = "tcp"
#   source_security_group_id = "${data.terraform_remote_state.bast.bastion_elb_id}"
#   security_group_id = "${aws_security_group.bastion.id}"
# }

resource "aws_security_group_rule" "link_security_group_3" {
  type            = "ingress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  cidr_blocks = ["35.180.229.155/32"]
  security_group_id = "${aws_security_group.elb.id}"
}

resource "aws_security_group_rule" "link_security_group_3_out" {
  type            = "egress"
  from_port       = 22
  to_port         = 22
  protocol        = "tcp"
  source_security_group_id = "${aws_security_group.instance.id}"
  security_group_id = "${aws_security_group.elb.id}"
}