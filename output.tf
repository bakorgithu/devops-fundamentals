

output "publicip" {
value = module.ec2_module.ip  
}

output "instanceid" {
value = module.ec2_module.id  
}

output "vpc_id" {
  value = module.vpc_module.vpcid
}

output "public_subnet_1_id" {
  value = module.vpc_module.publicsubnet1id     
}

output "public_subnet_2_id" {
  value = module.vpc_module.publicsubnet2id
}