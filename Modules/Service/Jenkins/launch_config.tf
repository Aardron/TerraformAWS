resource "aws_launch_configuration" "launch_config" {
  name_prefix             = "${var.service_name}+${var.env}+_config"
  image_id                = "${var.Jenkins_ami}"
  instance_type           = "${var.instanceName}"
}
