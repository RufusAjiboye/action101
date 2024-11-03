provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "node1" {
  instance_type               = "t2.micro"
  ami                         = "ami-00385a401487aefa4"
  associate_public_ip_address = true

  //ami           = "ami-053b46974baed7332"
  //key_name      = "mykeys100"

  tags = {
    Name = "Node Created by Git Actions"
  }
}
