provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "node1" {
  instance_type               = "t2.micro"
  ami                         = "ami-00385a401487aefa4"
  key_name                    = "mykeys100"
  associate_public_ip_address = true

  tags = {
    Name = "EC2 created by Git Actions"
  }
}


resource "aws_instance" "node2" {
  instance_type               = "t2.micro"
  ami                         = "ami-00385a401487aefa4"
  key_name                    = "mykeys100"
  associate_public_ip_address = true

  tags = {
    Name = "New Node Created by Git Actions"
  }
}
