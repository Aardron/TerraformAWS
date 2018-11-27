resource "aws_s3_bucket" "s3" {
  bucket = "my-booky-wooky"
  acl    = "private"
  region = "${var.aws_region}"
  tags {
    Name        = "Tony"
  }
}
