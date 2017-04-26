data "aws_ami" "coreos" {

	owners		= [ "595879546273" ]
	most_recent = true

	filter {
		name	= "name"
		values	= [ "CoreOS-stable-*" ]
	} 

	filter {
		name	= "virtualization-type"
		values	= [ "hvm" ]
	}

	filter {
		name	= "state"
		values	= [ "available" ]
	}

	filter {
		name	= "architecture"
		values	= [ "x86_64" ]
	}

	filter {
		name	= "image-type"
		values	= [ "machine" ]
	}

}

resource "aws_instance" "container_linux" {
	ami = "${ data.aws_ami.coreos.id }"

	count = "${ var.count }"

	key_name = "${ var.ssh_key }"
	associate_public_ip_address = true
	instance_type = "${ var.instance_type }"
	ebs_optimized = "${ var.ebs_optimized }"
	vpc_security_group_ids = [ "${ var.security_group_ids }" ]
	subnet_id = "${ var.subnet_id }"
	source_dest_check = "${ var.source_dest_check }"
	user_data = "${ var.user_data }"
	iam_instance_profile = "${ var.iam_instance_profile }"

	tags {
		Name = "${ var.instance_name }"
		Dept = "${ var.dept_name }"
	}
}
