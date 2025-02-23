variable "x" {
  default = 100
}

output "output" {
  value = var.x
}

variable "v_map" {
  default = {
    x = 10
    y = 20
  }
}

output "output_1" {
  value = var.v_map["x"] # Mapping
}

variable "z" {
  default = [1, 2 ,3]
}

output "output_2" {
  value = var.z[1]
}