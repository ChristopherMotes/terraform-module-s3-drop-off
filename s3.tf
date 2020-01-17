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
            days          = 0
            storage_class = "GLACIER"
        }

        expiration {
            days = 360
        }
    }
    
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm     = "aws:kms"
            }
        }
    }
}