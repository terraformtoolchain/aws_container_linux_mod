output "id" {
	value = "${ aws_instance.container_linux.id }"
}

output "public_ip" {
	value = "${ aws_instance.container_linux.public_ip }"
}

output "private_ip" {
	value = "${ aws_instance.container_linux.private_ip }"
}
