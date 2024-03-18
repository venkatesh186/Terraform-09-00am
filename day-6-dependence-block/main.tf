resource "aws_instance" "test" {
    ami = "ami-0f403e3180720dd7e"
    instance_type = "t2.micro"
    key_name = "test"
  
}

resource "aws_s3_bucket" "test" {
    bucket = "rtyujiklofvghnj"
    depends_on = [aws_instance.test]
     
}
