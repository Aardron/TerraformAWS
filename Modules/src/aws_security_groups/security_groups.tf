

resource "aws_security_group" "security_rules" {
  name        = "security_rules"
  description = "Defines a set of traffic  rules"

  ingress {
    from_port   = "${var.ingress_from_port}"
    to_port     = "${var.ingress_from_port}"
    protocol    = "tcp"
    cidr_blocks = ["${var.vpc_cidr_block}"]
  }

    egress {
    from_port   = "${var.egress_from_port}"
    to_port     = "${var.egress_from_port}"
    protocol    = "tcp"
    cidr_blocks = ["${var.vpc_cidr_block}"]
}
}
