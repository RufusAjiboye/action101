provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "node1" {
  ami           = "vpc-053b46974baed7332"
  instance_type = "t2.micro"
  key_name      = "mykeys100"

  tags = {
    Name = "Node Created by Git Actions"
  }
}
