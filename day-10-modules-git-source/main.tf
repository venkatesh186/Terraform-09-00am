module "ec2_instance" {
 source  = "github.com/CloudTechDevOps/Terraform-09-00am/day-3-custom-nw"
  ami_id = "ami-0f403e3180720dd7e"
  instance_type = "t2.micro"
  key_name = "test"


  
}
