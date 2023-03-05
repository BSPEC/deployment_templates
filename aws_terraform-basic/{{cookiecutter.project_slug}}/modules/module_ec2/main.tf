provider "aws" {
  version = "~> 2.0"
  region  = var.region
}

resource "aws_instance" "instance" {
  ami           = var.ami
  instance_type = var.instance_type

  vpc_security_group_ids = [var.vpc_security_group]
  subnet_id              = var.subnet_id

  associate_public_ip_address = var.associate_public_ip

  key_name = var.key_name

  user_data = var.user_data

  tags = {
    Name = var.ec2_tags
  }
}
