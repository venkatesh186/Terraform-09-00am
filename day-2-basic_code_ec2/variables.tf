variable "ami_id" {
    description = "passing AMI vlaue to  main.tf"
    type = string
    default = ""
  
}
variable "instance_type" {
  type = string
  default = ""
}
variable "key_name" {
    type = string
    default = ""
  
}
variable "avaialbility_zone" {
type = string
default = ""
description = "passing AMI value to main.tf"

