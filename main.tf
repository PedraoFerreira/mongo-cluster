resource "aws_instance" "router-instance" {
  ami           = "ami-0c322300a1dd5dc79" # Red Hat Enterprise Linux 8 (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.mongo-key.key_name}"
  user_data = "${file("instalation_file/router_server.sh")}"

  security_groups = [
    "${aws_security_group.sg_mongodb.name}"
  ]

  tags {
    type = "MongoDB"
  }
}

resource "aws_instance" "confserv-01-instance" {
  ami           = "ami-0c322300a1dd5dc79" # Red Hat Enterprise Linux 8 (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.mongo-key.key_name}"
  user_data = "${file("instalation_file/config_server.sh")}"

  security_groups = [
    "${aws_security_group.sg_mongodb.name}"
  ]

  tags {
    type = "MongoDB"
  }
}

resource "aws_instance" "confserv-02-instance" {
  ami           = "ami-0c322300a1dd5dc79" # Red Hat Enterprise Linux 8 (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.mongo-key.key_name}"
  user_data = "${file("instalation_file/config_server.sh")}"

  security_groups = [
    "${aws_security_group.sg_mongodb.name}"
  ]

  tags {
    type = "MongoDB"
  }
}

resource "aws_instance" "srdserv1-01-instance" {
  ami           = "ami-0c322300a1dd5dc79" # Red Hat Enterprise Linux 8 (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.mongo-key.key_name}"
  user_data = "${file("instalation_file/shard_server_01.sh")}"

  security_groups = [
    "${aws_security_group.sg_mongodb.name}"
  ]

  tags {
    type = "MongoDB"
  }
}

resource "aws_instance" "srdserv1-02-instance" {
  ami           = "ami-0c322300a1dd5dc79" # Red Hat Enterprise Linux 8 (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.mongo-key.key_name}"
  user_data = "${file("instalation_file/shard_server_01.sh")}"

  security_groups = [
    "${aws_security_group.sg_mongodb.name}"
  ]

  tags {
    type = "MongoDB"
  }
}

resource "aws_instance" "srdserv2-01-instance" {
  ami           = "ami-0c322300a1dd5dc79" # Red Hat Enterprise Linux 8 (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.mongo-key.key_name}"
  user_data = "${file("instalation_file/shard_server_02.sh")}"

  security_groups = [
    "${aws_security_group.sg_mongodb.name}"
  ]

  tags {
    type = "MongoDB"
  }
}

resource "aws_instance" "srdserv2-02-instance" {
  ami           = "ami-0c322300a1dd5dc79" # Red Hat Enterprise Linux 8 (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.mongo-key.key_name}"
  user_data = "${file("instalation_file/shard_server_02.sh")}"

  security_groups = [
    "${aws_security_group.sg_mongodb.name}"
  ]

  tags {
    type = "MongoDB"
  }
}