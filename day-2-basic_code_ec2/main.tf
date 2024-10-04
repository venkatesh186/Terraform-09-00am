resource "aws_instance" "test" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    associate_public_ip_address = true
    tags = {
      Name = "dev_ec2"
    }
}

provider "aws" {
   region = "ap-south-1"
