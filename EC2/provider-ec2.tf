# Terraform code to create ec2 instance

provider "aws"{
  access_key = "*********************"
  secret_key = "*********************"
  region = "ap-south-1"
}

resource "aws_instance" "terraform_ec2"{
  ami = "ami-0189d76e"
  instance_type = "t2.micro"

  tags{
    Name = "Terraform"
  } 
}
