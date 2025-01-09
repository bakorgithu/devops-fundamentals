
# defining the EC2 Instance

data "aws_ami" "latest_amazon_linux" {
  most_recent = true
  owners = [ "amazon" ]
  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "test_ec2" {
  ami             = data.aws_ami.latest_amazon_linux.id
  instance_type   = var.instance_type
  key_name        = var.key_name
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]


  tags = {
    Name : var.instance_name
  }

  provisioner  "local-exec" {
  command = "echo 'Instance Public IP ${aws_instance.test_ec2.public_ip}' > terraform_output.txt"
}
}

