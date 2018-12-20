resource "aws_security_group" "instance" {
  name = "terraform-jenkins-instance"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}

resource "aws_security_group" "elb" {
  name = "terraform-jenkins-elb"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"
}

resource "aws_security_group" "internet_to_instance" {
  name = "terraform-internet_to_instance"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"
}

