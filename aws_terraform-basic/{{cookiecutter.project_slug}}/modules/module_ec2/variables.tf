variable "instance_type" {
  type        = string
  description = "The instance type to use for the EC2 instance"
}

variable "ami" {
  type        = string
  description = "The AMI ID to use for the EC2 instance"
}

variable "vpc_security_group" {
  type        = string
  description = "The VPC security group to use for the EC2 instance"
}

variable "subnet_id" {
  type        = string
  description = "The subnet ID to use for the EC2 instance"
}

variable "associate_public_ip" {
  type        = bool
  description = "Whether to associate a public IP address with the EC2 instance"
}

variable "key_name" {
  type        = string
  description = "The name of the EC2 key pair to use for the EC2 instance"
}

variable "user_data" {
  type        = string
  description = "The user data to pass to the EC2 instance during launch"
  default     = "./userdata.sh"
}

variable "region" {
  type        = string
  description = "The AWS region to use for the EC2 instance"
}

variable "ec2_tags" {
  type        = string
  description = "The Tags to use to reference the EC2 instance"
  default     = "my-project-name"
}
