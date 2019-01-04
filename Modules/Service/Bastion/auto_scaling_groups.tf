resource "aws_autoscaling_group" "autoscaling_group" {
  name                      = "${var.service_name}-${var.env}"
  max_size                  = "${var.max_size}"
  min_size                  = "${var.min_size}"
  desired_capacity          = "${var.desired_capacity}"
  force_delete              = false
  launch_configuration      = "${aws_launch_configuration.launch_config.id}"
  load_balancers            = [ "${aws_elb.elb.id}" ]
  vpc_zone_identifier       = ["${data.terraform_remote_state.vpc.private_subnet}"]

   tags = [
    {
      key = "Name"
      value = "${var.service_name}-${var.env}"
      propagate_at_launch = true
  }
  ]
}