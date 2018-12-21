data "aws_availability_zones" "available" {}

resource "aws_subnet" "public_subnet" {
  count                   = "${length(data.aws_availability_zones.available.names)}"
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block = "${
                        cidrsubnet(var.vpc_cidr_block,
                        (length(data.aws_availability_zones.available.names)),
                        count.index)
                        }"

  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
tags {
  Name = "${var.subnet_public_name}"
}
}

resource "aws_subnet" "private_subnet" {
  count  = "${length(data.aws_availability_zones.available.names)}"
  vpc_id = "${aws_vpc.vpc.id}"
  cidr_block = "${
                        cidrsubnet(var.vpc_cidr_block,
                        length(data.aws_availability_zones.available.names),
                        (length(data.aws_availability_zones.available.names)+count.index))
                        }"

  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
  tags {
  Name = "${var.subnet_private_name}"
}
}
