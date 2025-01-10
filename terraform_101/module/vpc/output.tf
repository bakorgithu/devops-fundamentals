##

output "vpcid" {
  value = aws_vpc.vpc.id
}

output "publicsubnet1id" {
  value = aws_subnet.public-subnet-1.id
}

output "publicsubnet2id" {
  value = aws_subnet.public-subnet-2.id
}


output "privatesubnet1id" {
  value = aws_subnet.private-subnet-1.id                 
}

output "privatesubnetid" {
  value = aws_subnet.private-subnet-2.id                 
}