terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
}

resource "aws_eip_association" "eip_assoc" {
    instance_id = aws_instance.auto-eip.id
    allocation_id = var.eip
}

resource "aws_instance" "auto-eip" {
  ami           = var.ami-oregon
  availability_zone = "us-west-2a"
  instance_type = var.instance-type
  associate_public_ip_address = true
  tags = {
    Name = "MyAppServer"
  }
 
}
