resource "aws_security_group" "instance" {
  name = "terraform-jenkins-instance"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}

resource "aws_security_group" "elb" {
  name = "terraform-jenkins-elb"
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

resource "aws_security_group" "bastion" {
  name = "terraform-jenkins-bastion"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}
