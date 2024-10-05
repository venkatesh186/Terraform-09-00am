variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
}

  
}
variable "instance_type" {
    type = string
    default = ""
  
}
variable "key_name" {
    type = string
    default = ""
  
}
