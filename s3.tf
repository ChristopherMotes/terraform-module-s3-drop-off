resource "aws_s3_bucket" "dropOffBucket" {
    bucket = "${var.bucketName}.imperial.galactic.gov"
}