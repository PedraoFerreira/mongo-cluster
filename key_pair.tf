resource "aws_key_pair" "mongo-key" {
  key_name   = "mongo-key"
  public_key = "${file("mongo_key.pub")}"
}