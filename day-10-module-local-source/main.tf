module "dev" {

source = "../day-3-custom-nw"
ami_id =   var.ami
instance_type = var.instance_type
key_name = var.key_name

  
}
