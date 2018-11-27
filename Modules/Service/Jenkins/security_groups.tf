module "security_rules" {
    source = "../../src/aws_security_groups"
    
    aws_region      = "${var.aws_region}"

    ingress_from_port  = "${var.ingress_from_port}"
    ingress_to_port    = "${var.ingress_to_port}"
    egress_from_port   = "${var.egress_from_port}"
    egress_to_port     = "{${var.egress_to_port}}"
}
