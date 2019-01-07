resource "aws_route_table" "private_route_table" {
    vpc_id = "${aws_vpc.vpc.id}"
}

resource "aws_route" "private_route" {
	route_table_id  = "${aws_route_table.private_route_table.id}"
	destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = "${aws_nat_gateway.nat_gateway.id}"
}

resource "aws_route" "peering_route" {
  count = "${length(var.peering_destination)}"
	route_table_id  = "${aws_route_table.private_route_table.id}"
	destination_cidr_block = "${element("${var.peering_destination}", count.index)}"
  vpc_peering_connection_id = "${var.peering_id}"
}


//Public table
resource "aws_route" "public_route" {
  route_table_id         = "${aws_vpc.vpc.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.internet_gateway.id}"
}
