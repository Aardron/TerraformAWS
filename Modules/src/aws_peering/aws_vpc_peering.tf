resource "aws_vpc_peering_connection" "peering" {
  peer_vpc_id   = "${element(var.peer_to, count.index)}"
  vpc_id        = "${element(var.peer_from, count.index)}"
  auto_accept   = true
}