resource "local_file" "test" {
  filename = "${path.module}/test.txt"
  content  = "Hello world!"
}

resource "time_sleep" "wait_30_seconds" {
  create_duration = "5s"
  destroy_duration = "10s"
}

variable "instances" {
  default = [{
    type = "t2.microsss"
  }]
}
