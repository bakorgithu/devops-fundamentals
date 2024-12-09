
# defining the EC2 Instance

resource "aws_instance" "instance" {
  ami             = "var.ami_id"
  instance_type   = "var.instance_type"
  key_name        = "var.key_name "
  security_groups = ["aws_security_group.allow_ssh.ivo's sg"]

  tags = {
    Name : "var.instance_name"
  }
}