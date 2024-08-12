resource "aws_s3_bucket" "bucketpass" {
  bucket = "fukygkihlihiljojohkufyjfjygkhgliojg"  # Replace with your unique bucket name
}
resource "aws_s3_bucket_versioning" "bucketversioning" {
  bucket = aws_s3_bucket.bucketpass.id
  versioning_configuration {
    status = "Enabled"
  } 
}