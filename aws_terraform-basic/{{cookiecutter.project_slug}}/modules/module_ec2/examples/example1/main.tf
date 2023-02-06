module "ec2_instance" {
  source = "./module_ec2"

  instance_type       = var.instance_type
  ami                 = var.ami
  vpc_security_group  = var.vpc_security_group
  subnet_id           = var.subnet_id
  associate_public_ip = true
  key_name            = var.key_name
  user_data           = file("./userdata.sh")
}
