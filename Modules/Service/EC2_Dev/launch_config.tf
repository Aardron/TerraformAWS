resource "aws_launch_configuration" "launch_config" {
  name_prefix     = "${var.env}-ec2-"
  image_id        = "${var.EC2_ami}"
  instance_type   = "${var.instanceName}"
  key_name = "${var.key_name}"
  security_groups = ["${aws_security_group.instance.id}"]
  user_data = <<-EOF
    #!/usr/bin/env sh
    apt-get update 
    apt-get upgrade -y
    apt-get install -y httpd 
    sudo apt-get update 
    service httpd start
    apt-get install -y php php-mysql
    sudo apt-get update 
    service httpd restart
    EOF

    lifecycle {
      create_before_destroy = true
    }
}
