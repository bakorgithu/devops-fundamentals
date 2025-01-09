resource "aws_instance "bla" {
  data "linode_instance_type" "default" {
      id = "g6-standard-2"
  }
}