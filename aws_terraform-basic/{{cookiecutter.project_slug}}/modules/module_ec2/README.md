# EC2 Instance Terraform Module
This Terraform module creates an EC2 instance with a dedicated IP

## Requirements
Terraform 0.13 or later
An AWS account with the required permissions to create EC2 instances and other AWS resources.

## Usage
To use this module in your Terraform configuration, add the following code:

``` Terraform
module "ec2_instance" {
  source = "./module_ec2"

  region              = var.region
  instance_type       = var.instance_type
  ami                 = var.ami
  vpc_security_group  = var.vpc_security_group
  subnet_id           = var.subnet_id
  associate_public_ip = true
  key_name            = var.key_name
  user_data           = file("./userdata.sh")
}

```

Replace the values of the variables with your own values, and make sure to set up the necessary environment variables for Terraform to authenticate API requests to AWS.

# Inputs
The following inputs are required:
`region`: The AWS region to use.
`instance_type`: The EC2 instance type to use.
`ami`: The ID of the Amazon Machine Image (AMI) to use.
`vpc_security_group`: The ID of the VPC security group to use.
`subnet_id`: The ID of the subnet to use.
`associate_public_ip`: Whether to associate a public IP address with the EC2 instance.
`key_name`: The name of the key pair to use.
`user_data`: The user data script to use for the EC2 instance.
`region`: The AWS region to use for the EC2 instance

## Outputs
The following outputs are available:

`instance_id`: The ID of the EC2 instance.
`instance_ip`: The public IP address of the EC2 instance.

# License
This module is licensed under the Apache 2.0 License.