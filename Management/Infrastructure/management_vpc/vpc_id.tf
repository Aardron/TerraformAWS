output "public_subnet" {
  value = ["${module.management_vpc.public_subnet}"]
}
