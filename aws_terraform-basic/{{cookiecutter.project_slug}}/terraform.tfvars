# EC2 Instance Vars
instance_type       = "t2.nano"
ami                 = "ami-049df61146f897901"
vpc_security_group  = "sg-049df61146f897901"
subnet_id           = "subnet-049df61146f897901"
associate_public_ip = true
key_name            = "my-key-pair"
region              = "eu-central-1"
ec2_tags            = "my-project-name"

# S3 Instance Vars
bucket_name = "my-bucket"
s3_tags     = "my-project-name"
