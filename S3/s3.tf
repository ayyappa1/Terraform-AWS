# Terraform code to create ec2 instance

provider "aws"{
  access_key = "AKIAJGCYZWZB47MSTXIA"
  secret_key = "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"
  region = "ap-south-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-preprod-bucket"
  acl    = "private"

  tags {
    Name        = "dev.preprod.backend-logs"
    Environment = "Dev"
  }
}
