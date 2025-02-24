resource "aws_instance" "test" {
  for_each               = var.instance_types
  ami                    = data.aws_ami.test.owner_id
  vpc_security_group_ids = [data.aws_security_group.selected.id]
  instance_type          = each.value["instance_type"]
  tags = {
    Name = each.key
  }

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = self.public_ip
    }
    inline = [
      "sudo dnf install -y",
      "sudo systemctl start dnf"
    ]
  }

}

data "aws_security_group" "selected" {
  name = "allow-all"
}

data "aws_ami" "test" {
  owners = []
}

variable "instance_types" {
  default = {
    frontend = {
      instance_type = "t3.micro"
    }
    mysql = {
      instance_type = "t3.small"
    }
  }
}
