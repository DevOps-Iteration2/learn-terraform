module "demo-1" {
  source = "./demo"
  Name = "Demo-1"
}



# Firstly we create an instance and later, if we intend to give name tag to it we declare variable block with a label "Name" in sub-module and get we provide value to declared variable it main.tf in root module