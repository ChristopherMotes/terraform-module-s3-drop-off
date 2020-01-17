resource "aws_s3_bucket_policy" "allow_object_write" {
  bucket = "${aws_s3_bucket.dropOffBucket.id}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "ResourceAllow",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:PutObject",
      "Resource": "${aws_s3_bucket.dropOffBucket.arn}/*",
      "Condition": {
            "ArnEquals": { "aws:SourceArn": var.writingResourceARN }
      }
    }
  ]
}
POLICY
}