resource "aws_instance" "Demo" {
  ami           = ""
  instance_type = "t3.micro"
  tags = {
    Name = var.Name
  }
}

variable "Name" {}