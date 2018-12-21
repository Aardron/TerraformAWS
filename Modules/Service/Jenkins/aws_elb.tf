resource "aws_elb" "elb" {
  name            = "${var.service_name}"
  security_groups = ["${aws_security_group.elb.id}"]
  subnets         = ["${data.terraform_remote_state.vpc.public_subnet}"]
  
  listener {
    instance_port     = 8080
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

 listener {
    instance_port     = 22
    instance_protocol = "tcp"
    lb_port           = 22
    lb_protocol       = "tcp"
  }

  health_check {    
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "TCP:8080"
    interval            = 30
  }

  tags{
    Name ="Jenkins-ELB"
  }
}

