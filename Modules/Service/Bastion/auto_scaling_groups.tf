resource "aws_autoscaling_group" "autoscaling_group" {
  name                      = "${var.service_name}+${var.env}"
  max_size                  = "1"
  min_size                  = "1"
  desired_capacity          = "1"
  force_delete              = false
  launch_configuration      = "${aws_launch_configuration.launch_config.id}"
  load_balancers            = [ "${aws_elb.elb.id}" ]

}