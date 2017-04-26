variable "count" {}

variable "instance_type" {
	type = "string"
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

