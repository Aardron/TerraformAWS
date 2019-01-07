resource "aws_security_group" "instance" {
  name = "${var.env}-instance-sg"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}

resource "aws_security_group" "elb" {
  name = "${var.env}-elb-sg"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"
}
