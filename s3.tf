resource "aws_s3_bucket" "dropOffBucket" {
    bucket = "${var.bucketName}.imperial.galactic.gov"
    acl    = "private"
    logging {
        target_bucket = var.loggingBucketName
        target_prefix = "${var.bucketName}/"
    }
}