output "router-ip" {
  value = "${aws_eip.router-eip.public_ip}"
}

/*

output "confserv-01-ip" {
  value = "${aws_eip.confserv-01-eip.public_ip}"
}

output "confserv-02-ip" {
  value = "${aws_eip.confserv-02-eip.public_ip}"
}

output "srdserv1-01-ip" {
  value = "${aws_eip.srdserv1-01-eip.public_ip}"
}

output "srdserv1-02-ip" {
  value = "${aws_eip.srdserv1-02-eip.public_ip}"
}

output "srdserv2-01-ip" {
  value = "${aws_eip.srdserv2-01-eip.public_ip}"
}

output "srdserv2-02-ip" {
  value = "${aws_eip.srdserv2-02-eip.public_ip}"
}

*/