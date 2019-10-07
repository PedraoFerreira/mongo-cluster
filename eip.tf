resource "aws_eip" "router-eip" {
  instance    = "${aws_instance.router-instance.id}"
}