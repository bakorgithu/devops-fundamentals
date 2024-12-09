## variables

variable "region" {
  type = string
  description = "Provide the aws region in which you want to provision the resource"
  default = "us-east-2"
}

variable "ami_id" {
  type = string
  description = "provide the amid | by default the ami id is 12345678"
  default = "12345678"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = string
  default = "Ivo"
}

variable "key_name" {
  type = string 
  description = "this is required value please provide key name"
}