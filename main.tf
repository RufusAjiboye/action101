provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "ec2-aws_instance" {
  ami           = "ami-00385a401487aefa4"
  instance_type = "t2-micro"
  key_name      = "mykeys100"

  tags = {
    Name = "Node Created by Git Actions"
  }
}
