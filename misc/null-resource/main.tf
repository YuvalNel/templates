resource "null_resource" "null2" {
  count = 1

  triggers = {
    tags = "my_tag_3"
  }
}

resource "null_resource" "null" {
  triggers = {
    tags = "my_tag_1"
  }
}
