resource "aws_security_group" "instance" {
  name = "terraform-jenkins-instance"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

}

resource "aws_security_group" "elb" {
  name = "terraform-jenkins-elb"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"
}

# resource "aws_security_group" "bastion" {
#   name = "terraform-jenkins-bastion-link"
#   vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"

# }
