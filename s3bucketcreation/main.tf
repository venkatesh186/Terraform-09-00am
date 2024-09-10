resource "aws_s3_bucket" "example" {
  bucket = "var.bucket"

}


provider "aws" {
  region = "us-west-2"  # Change this to your desired region
}


