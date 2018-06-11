# Terraform code to create VPC

provider "aws"{
  access_key = "***********************"
  secret_key = "***********************"
  region = "ap-south-1"
}

resource "aws_vpc" "main"{
  cidr_block       = "190.160.0.0/16"
  instance_tenancy = "default"

  tags {
    Name = "main"
    Location = "Chennai"
  } 
}

resource "aws_subnet" "subnet1" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "190.160.1.0/24"

  tags {
    Name = "subnet1"
  }
}
