provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "node1" {
  //ami           = "ami-053b46974baed7332"
  ami           = "ami-00385a401487aefa4"
  instance_type = "t2.micro"
  //key_name      = "mykeys100"

  tags = {
    Name = "Node Created by Git Actions"
  }
}
