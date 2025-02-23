resource "aws_instance" "Demo" {
  ami           = ""
  instance_type = var.instance_type
  tags = {
    Name = var.Name
  }
}

variable "Name" {}
variable "instance_type" {}