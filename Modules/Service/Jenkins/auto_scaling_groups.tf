resource "aws_autoscaling_group" "autoscaling_group" {
  name                      = "${var.service_name}_${var.env}"
  max_size                  = "2"
  min_size                  = "2"
  desired_capacity          = "2"
  force_delete              = false
  launch_configuration      = "${aws_launch_configuration.launch_config.id}"
  load_balancers            = [ "${aws_elb.elb.id}" ]
  vpc_zone_identifier       = ["${data.terraform_remote_state.vpc.public_subnet}"]

  tags = [
    {
      key = "Name"
      value = "${var.service_name}_${var.env}"
      propagate_at_launch = true
  }
  ]
}