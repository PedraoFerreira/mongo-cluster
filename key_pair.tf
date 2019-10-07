resource "aws_key_pair" "mongo-key" {
  key_name   = "mongo-key"
  public_key = "${file("key_pair/mongo_cluster_key.pub")}"
}