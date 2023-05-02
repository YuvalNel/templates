variable "counter" {
  type = number
  default = 13
}

resource "null_resource" "null" {
  count = var.counter
}

