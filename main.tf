provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "node1" {
  instance_type               = "t2.micro"
  ami                         = "ami-00385a401487aefa4"
  key_name                    = "mykeys100"
  associate_public_ip_address = true

  tags = {
    Name = "Git it Actions in Action"
  }
}

terraform {
  
    backend "s3" {
        bucket = "techbleat-terraform-storage"
        key = "action/dev/terraform.tfstate"
        region = "eu-west-1"
    }
}
