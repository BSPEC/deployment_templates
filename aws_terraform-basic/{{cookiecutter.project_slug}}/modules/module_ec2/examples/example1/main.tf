module "ec2_instance" {
  source = "./modules/module_ec2"

  region = var.region

  instance_type       = var.instance_type
  ami                 = var.ami
  vpc_security_group  = var.vpc_security_group
  subnet_id           = var.subnet_id
  associate_public_ip = var.associate_public_ip
  key_name            = var.key_name
  user_data           = file("${var.userdata}")
}
