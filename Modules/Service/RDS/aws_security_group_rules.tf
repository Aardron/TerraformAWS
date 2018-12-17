resource "aws_security_group_rule" "link_security_group_1" {
  type            = "ingress"
  from_port       = 3030
  to_port         = 3030
  protocol        = "tcp"
  security_group_id = "${aws_security_group.instance.id}"
  cidr_blocks = ["${data.terraform_remote_state.vpc.vpc_cidr}"]
}
