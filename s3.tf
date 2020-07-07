resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}"
  acl    = "private"
}


resource "aws_s3_bucket_object" "test1" {
  bucket = "${aws_s3_bucket.bucket.bucket}"
  key    = "test1.txt"
  content = "${timestamp()}"
}

resource "aws_s3_bucket_object" "test2" {
  bucket = "${aws_s3_bucket.bucket.bucket}"
  key    = "test2.txt"
  content = "${timestamp()}"
}