variable "counter" {
  type = number
  default = 15
}

resource "null_resource" "null" {
  count = var.counter
}

