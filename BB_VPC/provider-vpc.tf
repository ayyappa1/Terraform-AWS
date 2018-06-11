# Terraform code to create VPC

provider "aws"{
  access_key = "************************"
  secret_key = "*************************"
  region = "${var.region}"
}

resource "aws_vpc" "main1"{
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"

  tags {
    Name = "main1"
    Location = "Chennai"
  } 
}

resource "aws_subnet" "subnet2" {
  vpc_id     = "${aws_vpc.main1.id}"
  cidr_block = "${var.vsubnet_cidr}"

  tags {
    Name = "subnet2"
  }
}
