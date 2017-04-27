variable "count" {}

variable "ssh_key" {
	default = ""
}

variable "instance_type" {
	type = "string"
}

variable "public_instance" {
	description = "(Optional) Boolean that defines whether or not to allocate a public ip to the instance. Default=False"
	default = false
}

variable "ebs_optimized" {
	default = true
}

variable "security_group_ids" {
	type = "string"
}

variable "subnet_id" {
	type = "string"
}

variable "source_dest_check" {
	default = true
}

variable "user_data" {
	type = "string"
}

variable "iam_instance_profile" {
	type = "string"
}

variable "instance_name" {
	type = "string"
}

variable "dept_name" {
	type = "string"
}

