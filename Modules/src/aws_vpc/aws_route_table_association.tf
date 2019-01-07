
resource "aws_route_table_association" "public_subnet" {
  count  = "${length(data.aws_availability_zones.available.names)}"

  subnet_id = "${element(aws_subnet.public_subnet.*.id, count.index)}"

  route_table_id = "${aws_vpc.vpc.main_route_table_id}"
}

resource "aws_route_table_association" "private_subnet" {
  count  = "${length(data.aws_availability_zones.available.names)}"

  subnet_id = "${element(aws_subnet.private_subnet.*.id, count.index)}"

  route_table_id = "${aws_route_table.private_route_table.id}"
}
