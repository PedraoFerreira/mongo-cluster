#output "router-ip" {
#output "confserv-01-ip" {
#output "confserv-02-ip" {
#output "srdserv1-01-ip" {
#output "srdserv1-02-ip" {
#output "srdserv2-01-ip" {
#output "srdserv2-02-ip" {

resource "aws_instance" "router-instance" {
  ami           = "ami-0c322300a1dd5dc79" # Red Hat Enterprise Linux 8 (HVM), SSD Volume Type
  instance_type = "t2.micro"
  key_name      = "${aws_key_pair.mongo-key.key_name}"
  user_data = "${file("instalation_mongo.sh")}"

  security_groups = [
    "${aws_security_group.sg_mongodb.name}"
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
    type = "MongoDB"
  }
}