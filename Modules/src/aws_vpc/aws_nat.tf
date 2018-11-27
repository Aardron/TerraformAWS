resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = "${aws_eip.eip.id}"
  subnet_id     = "${element(aws_subnet.public_subnet.*.id, count.index)}"
}
