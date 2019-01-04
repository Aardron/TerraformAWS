resource "aws_security_group" "instance" {
  name = "terraform-RDS-instance"
  vpc_id = "${data.terraform_remote_state.vpc.vpc_id}"
  
}
