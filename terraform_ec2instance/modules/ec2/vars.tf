## variable

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name" {
  type = string
  default = "Bakor_ivo"
}

variable "key_name" {
    type = string
    
}

variable "traffic_accept_IP" {
  type = string
  default = "0.0.0.0/0"
}