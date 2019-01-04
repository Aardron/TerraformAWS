resource "aws_launch_configuration" "launch_config" {
  name_prefix     = "${var.env}-ec2-"
  image_id        = "${var.EC2_ami}"
  instance_type   = "${var.instanceName}"
  security_groups = ["${aws_security_group.instance.id}"]

}
