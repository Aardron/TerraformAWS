resource "aws_launch_configuration" "launch_config" {
  name_prefix     = "${var.service_name}+${var.env}+_config"
  image_id        = "${var.bastion_ami}"
  instance_type   = "${var.instanceName}"
  security_groups = ["${aws_security_group.instance.id}"]
  key_name = "terraform-chall"
  associate_public_ip_address = false
}
