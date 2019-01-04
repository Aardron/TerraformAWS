output "public_subnet" {
  value = "${module.management_vpc.public_subnet}"
}

output "private_subnet" {
  value = "${module.management_vpc.private_subnet}"
}

output "vpc_id" {
  value = "${module.management_vpc.vpc_id}"
}
