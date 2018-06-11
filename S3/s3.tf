# Terraform code to create ec2 instance

provider "aws"{
  access_key = "*****************"
  secret_key = "*****************"
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
