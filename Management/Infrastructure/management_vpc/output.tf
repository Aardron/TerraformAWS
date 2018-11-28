output "public_subnet" {
  value = "${module.management_vpc.public_subnet}"
}

output "vpc_id" {
  value = "${module.management_vpc.vpc_id}"
}
