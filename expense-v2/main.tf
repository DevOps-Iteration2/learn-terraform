resource "aws_instance" "Expense" {
  for_each               = var.instance_types
  ami                    = var.ami
  vpc_security_group_ids = var.security_groups
  instance_type          = each.value["instance_type"]
  tags                   = {
    Name                 = each.key
  }
}

variable "ami" {
  default                = "ami-09c813fb71547fc4f"
}

variable "security_groups" {
  default                = ["sg-0622cccecbb35f515"]
}

variable "instance_types" {
  default                = {

    frontend             = {  # ------> frontend is key, instance_type is a value with a value
      instance_type      = "t3.micro"
    }

    mysql = {
      instance_type      = "t3.small"
    }

    backend = {
      instance_type      = "t3.micro"
    }
  }
}