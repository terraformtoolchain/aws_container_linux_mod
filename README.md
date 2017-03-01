# CoreOS Container Linux AMI Module

A Terraform module for EC2 that queries the AWS marketplace for the latest stable version of Container Linux by CoreOS.

## Module Inputs

- `count` - Number of instances to run.
- `instance_type` - AMI instance type. (t2.nano, m3.medium, etc...)
- `ebs_optimized` - Enables EBS optimization. (default = true)
- `vpc_security_group_ids` - Security groups to associate with the instance(s).
- `subnet_id` - VPC subnet to launch the instance(s) in.
- `source_dest_check` - Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. (default = true)
- `user_data` - User data to provide when launching the instance.
- `iam_instance_profile` - IAM instance profile to launch the instance with.
- `instance_name` - Human readable identifier for the instance. (tag variable)
- `dept_name` - Cost center to allocate to the instance. (tag variable)

## Module Outputs

- `id` - The AMI ID of the latest Container Linux image.
