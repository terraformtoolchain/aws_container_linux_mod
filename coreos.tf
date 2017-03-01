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
