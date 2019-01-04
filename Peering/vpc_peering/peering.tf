module "vpc_peering" {
  source = "../../Modules/src/aws_peering"
  peer_to = ["${data.terraform_remote_state.management_vpc.vpc_id}", "${data.terraform_remote_state.management_vpc.vpc_id}"]
  peer_from = ["${data.terraform_remote_state.dev_vpc.vpc_id}", "${data.terraform_remote_state.prod_vpc.vpc_id}"]
}