output "public_subnet" {
  value = "${module.production_vpc.public_subnet}"
}

output "vpc_id" {
  value = "${module.production_vpc.vpc_id}"
}

output "private_subnet" {
  value = "${module.production_vpc.private_subnet}"
}
