resource "aws_eip" "router-eip" {
  instance    = "${aws_instance.router-instance.id}"
}


resource "aws_eip" "confserv-01-eip" {
  instance    = "${aws_instance.confserv-01-instance.id}"
}

resource "aws_eip" "confserv-02-eip" {
  instance    = "${aws_instance.confserv-02-instance.id}"
}


resource "aws_eip" "srdserv1-01-eip" {
  instance    = "${aws_instance.srdserv1-01-instance.id}"
}

resource "aws_eip" "srdserv1-02-eip" {
  instance    = "${aws_instance.srdserv1-02-instance.id}"
}


resource "aws_eip" "srdserv2-01-eip" {
  instance    = "${aws_instance.srdserv2-01-instance.id}"
}

resource "aws_eip" "srdserv2-02-eip" {
  instance    = "${aws_instance.srdserv2-02-instance.id}"
}