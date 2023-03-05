# General Vars
region = "eu-central-1"

# EC2 Instance Vars
instance_type       = "t2.nano"
ami                 = "ami-049df61146f897901"
vpc_security_group  = "sg-049df61146f897901"
subnet_id           = "subnet-049df61146f897901"
associate_public_ip = true
key_name            = "my-key-pair"
ec2_tags            = "my-project-name"

# S3 Instance Vars
bucket_name = "my-bucket"
s3_tags     = "my-project-name"

# DynomoDB Instance Vars
table_name     = "my-table-name"
billing_mode   = "PROVISIONED"
read_capacity  = 5
write_capacity = 5
attribute = [
  {
    name = "id"
    type = "S"
  },
  {
    name = "name"
    type = "S"
  },
]
key_schema = [
  {
    attribute_name = "id"
    key_type       = "HASH"
  },
]
