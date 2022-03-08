resource "aws_instance" "stage-server"{
	ami = lookup(var.AMI, var.REGION)
	instance_type = var.INSTANCE_TYPE
	key_name = var.KEY_NAME
	tags = {
		Name = var.TAGS
	}
	count = var.COUNT
}