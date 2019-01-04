resource "aws_launch_configuration" "launch_config" {
  name_prefix     = "${var.service_name}-${var.env}-config"
  image_id        = "${var.jenkins_ami}"
  instance_type   = "${var.instanceName}"
  security_groups = ["${aws_security_group.instance.id}"]
  key_name = "${var.key_name}"
  associate_public_ip_address = false
  user_data = <<-EOF
    #!/usr/bin/env sh
    apt-get update 
    apt-get upgrade
    wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
    sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
    apt-get update
    apt-get install -y jenkins
    EOF
}

