resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}

resource "aws_security_group" "elb" {
  name = "terraform-example-elb"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["213.86.15.34/32"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["213.86.15.34/32"]
  }
}

resource "aws_security_group" "jenkins" {
  name = "terraform-example-jenkins"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}
