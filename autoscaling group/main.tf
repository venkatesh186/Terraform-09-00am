# Provider Configuration
provider "aws" {
  region = "ap-south-1" # Change to your desired region
}

# Data Source for default VPC and Subnets
data "aws_vpc" "default" {
  default = true
}

data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}

# Launch Template
resource "aws_launch_template" "app" {
  name_prefix   = "app-"
  image_id      = "ami-068e0f1a600cd311c" # Replace with a valid AMI ID
  instance_type = "t2.micro"

  key_name = "dibakar"

  lifecycle {
    create_before_destroy = true
  }
}

# Auto Scaling Group
resource "aws_autoscaling_group" "app" {
  desired_capacity     = 2
  max_size             = 3
  min_size             = 1
  vpc_zone_identifier  = data.aws_subnets.default.ids
  launch_template {
    id      = aws_launch_template.app.id
    version = "$Latest"
  }

  tag {
    key                 = "Name"
    value               = "app-instance"
    propagate_at_launch = true
  }
}

# Output the Auto Scaling Group Name
output "asg_name" {
  value = aws_autoscaling_group.app.name
}
