
# defining the EC2 Instance

resource "aws_instance" "test_ec2" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  iam_instance_profile = aws_iam_instance_profile.ec2_instanceprofile.name


  tags = {
    Name : var.instance_name
  }
}
