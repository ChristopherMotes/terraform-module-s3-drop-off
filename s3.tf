resource "aws_s3_bucket" "dropOffBucket" {
    bucket = "${var.bucketName}.imperial.galactic.gov"
    acl    = "private"
    logging {
        target_bucket = var.loggingBucketName
        target_prefix = "${var.bucketName}/"
    }
    lifecycle_rule {
        id      = "wholeBucket"
        enabled = true


        transition {
            days          = 60
            storage_class = "GLACIER"
        }

        expiration {
            days = 90
        }
    }
}