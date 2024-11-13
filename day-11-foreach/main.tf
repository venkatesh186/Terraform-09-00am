variable "ami" {
  type    = string
  default = "ami-063d43db0594b521b"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sandboxes" {
  type    = list(string)
  default = ["dev","prod"]
}


resource "aws_instance" "sandbox" {
  ami           = var.ami
  instance_type = var.instance_type
  for_each      = toset(var.sandboxes)
#   count = length(var.sandboxes)
  tags = {
    Name = each.value # for a set, each.value and each.key is the same
  }
}
provider "aws" {
    region = "us-east-1"
  
}
