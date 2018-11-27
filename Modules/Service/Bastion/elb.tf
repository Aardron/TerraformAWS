data "aws_availability_zones" "available" {}


resource "aws_elb" "elb" {
  name            = "${var.service_name}"
  security_groups = ["${aws_security_group.elb.id}"]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnet}"]

  listener {
    instance_port     = 22
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
}

