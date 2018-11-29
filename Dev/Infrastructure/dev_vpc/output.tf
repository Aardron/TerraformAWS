output "public_subnet" {
  value = "${module.dev_vpc.public_subnet}"
}

output "vpc_id" {
  value = "${module.dev_vpc.vpc_id}"
}
