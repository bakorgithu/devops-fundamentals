
# defining the EC2 Instance

resource "aws_instance" "test_ec2" {
  ami             = "ami-0c80e2b6ccb9ad6d1"
  instance_type   = "t2.micro"
  key_name        = "ivo_key"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]


  tags = {
    Name : "Ivo"
  }
}