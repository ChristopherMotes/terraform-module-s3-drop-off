variable bucketName {
    type = string
}

variable loggingBucketName {
    type = string
    default = "loggingbucket.imperial.galactic.gov"
}

variable writingResourceARN {
    type = string
    description = "The AWS ARN of the resource that writes to bucketName"
}