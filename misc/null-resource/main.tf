resource "null_resource" "null2" {
  count = 1

  triggers = {
    tags = "my_tag_2"
  }
}

resource "null_resource" "null5" {
  triggers = {
    tags = "my_tag_1"
  }
}
