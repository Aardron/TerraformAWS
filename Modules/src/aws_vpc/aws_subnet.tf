data "aws_availability_zones" "available" {}

resource "aws_subnet" "public_subnet" {
  count                   = "${length(data.aws_availability_zones.available.names)}"
  vpc_id                  = "${aws_vpc.vpc.id}"
  map_public_ip_on_launch = true

  cidr_block = "${
                        cidrsubnet(var.vpc_cidr_block,
                        (length(data.aws_availability_zones.available.names)),
                        count.index)
                        }"

  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
}

resource "aws_subnet" "private_subnet" {
  count  = "${length(data.aws_availability_zones.available.names)}"
  vpc_id = "${aws_vpc.vpc.id}"
  map_public_ip_on_launch = false
  cidr_block = "${
                        cidrsubnet(var.vpc_cidr_block,
                        length(data.aws_availability_zones.available.names),
                        (length(data.aws_availability_zones.available.names)+count.index))
                        }"

  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"
}
