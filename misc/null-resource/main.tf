variable "counter" {
  type = number
  default = 11
}

resource "null_resource" "null" {
  count = var.counter
}

