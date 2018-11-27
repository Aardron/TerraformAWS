
data "aws_availability_zones" "available" {}
resource "aws_elb" "elb" {
  name                = "${var.service_name}"
  availability_zones  = ["${data.aws_availability_zones.available.names[0]},${data.aws_availability_zones.available.names[1]}"]

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 443
    lb_protocol       = "https"
  }

  cross_zone_load_balancing   = true
}