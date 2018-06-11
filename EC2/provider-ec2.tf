# Terraform code to create ec2 instance

provider "aws"{
  access_key = "AKIAJGCYZWZB47MSTXIA"
  secret_key = "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"
  region = "ap-south-1"
}

resource "aws_instance" "terraform_ec2"{
  ami = "ami-0189d76e"
  instance_type = "t2.micro"

  tags{
    Name = "Terraform"
  } 
}
