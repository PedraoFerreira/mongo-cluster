output "router-ip" {
  value = "${aws_eip.router-eip.public_ip}"
}

output "confserv-01-ip" {
  value = "${aws_instance.confserv-01-instance.public_ip}"
}

output "confserv-02-ip" {
  value = "${aws_instance.confserv-02-instance.public_ip}"
}

output "srdserv1-01-ip" {
  value = "${aws_instance.srdserv1-01-instance.public_ip}"
}

output "srdserv1-02-ip" {
  value = "${aws_instance.srdserv1-02-instance.public_ip}"
}

output "srdserv2-01-ip" {
  value = "${aws_instance.srdserv2-01-instance.public_ip}"
}

output "srdserv2-02-ip" {
  value = "${aws_instance.srdserv2-02-instance.public_ip}"
}
