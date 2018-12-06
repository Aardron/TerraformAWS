resource "aws_security_group" "instance" {
  name = "terraform-example-instance"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}

resource "aws_security_group" "elb" {
  name = "terraform-example-elb"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"
}

resource "aws_security_group" "bastion" {
  name = "terraform-jenkins-bastion"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}
