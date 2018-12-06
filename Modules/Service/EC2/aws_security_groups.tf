resource "aws_security_group" "instance" {
  name = "terraform-EC2-instance"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}

resource "aws_security_group" "elb" {
  name = "terraform-EC2-elb"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["${var.my_ip}"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["${var.my_ip}"]
  }
}
