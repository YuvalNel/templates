generate "null_resource" {
  path = "module4new.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
resource "null_resource" "module4" {
  count = 2
}
EOF
}


terraform {
  source = "github.com/HeverFarber/templates.git//misc/null-resource"
}

dependency "root" {
  config_path = ".."
  skip_outputs = true

  /*  mock_outputs = {
      my_value = "module2"
    }*/
}

generate "output" {
  path = "output.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
output "my_value" {
  value = "value"
}
EOF
}
