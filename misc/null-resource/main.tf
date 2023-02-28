variable "counter" {
  type = number
  default = 12
}

resource "null_resource" "null" {
  count = var.counter
}

