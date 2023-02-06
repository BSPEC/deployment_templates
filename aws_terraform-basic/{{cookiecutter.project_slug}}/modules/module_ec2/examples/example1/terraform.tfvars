instance_type       = "t2.nano"
ami                 = "ami-049df61146f897901"
vpc_security_group  = "sg-049df61146f897901"
subnet_id           = "subnet-049df61146f897901"
associate_public_ip = true
key_name            = "my-key-pair"
region              = "eu-central-1"
tags                = ["ec2-instance", "my-project-name"]
