resource "null_resource" "null2" {
  count = 1

  triggers = {
    tags = "my_tag_2"
  }
}

resource "null_resource" "nulld" {
  triggers = {
    tags = "my_tag_1"
  }
}
