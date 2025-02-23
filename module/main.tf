#Localpath_module
module "demo-1" {
  source = "./demo"
  Name = "Demo-1"
  instance_type = "t2.micro"
}

# Firstly we create an instance and later, if we intend to give name tag to it we declare variable block with a label "Name" in sub-module and get we provide value to declared variable it main.tf