terraform {
  backend "s3" {
    bucket = "terraform-state.imperial.galactic.gov"
    region = "us-east-2"
  }
}

provider "aws" {
  version = "~> 2.0"
  region  = "us-east-2"
}