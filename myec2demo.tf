terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-2"
}
resource "aws_instance" "first_ec2" {
  ami                     = "ami-ami-0cd59ecaf368e5ccf "
  instance_type           = "t2.micro"
  key_name                =  "terraform_key" 
  tags = {
    Name = "terraformserver"
  } 
}

