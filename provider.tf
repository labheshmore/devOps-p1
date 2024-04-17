provider "aws" {
    region = "us-east-2"
}
resource "aws_instance" "first_ec2" {
  ami                     = "ami-08978028fd061067a"
  instance_type           = "t2.micro"
  key_name                =  "terraform_key" 
  tags = {
    Name = "Myterraformserver"
  } 
}

