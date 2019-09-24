resource "aws_instance" "app-instance" {
  ami           = "ami-0c322300a1dd5dc79" # Red Hat Enterprise Linux 8 (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.ssml-key.key_name}"


  security_groups = [
    "${aws_security_group.allow_ssh.name}",
    "${aws_security_group.allow_outbound.name}",
    "${aws_security_group.allow_http.name}"
  ]

/*
  provisioner "remote-exec" {
    inline = [
      "command curl -sSL https://rvm.io/mpapis.asc | gpg --import -",
      "\\curl -sSL https://get.rvm.io | bash -s stable --rails",
    ]

    connection {
      type          = "ssh"
      user          = "ubuntu"
      private_key   = "${file("~/.ssh/ssml_key")}"
    }
  }
*/

  tags {
    type = "Mongo"
  }
}