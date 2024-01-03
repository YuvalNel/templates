run "test" {
  assert {
    condition     = alltrue([
      for v in var.instances : contains(["t2.micro", "m3.medium"], v.type)
    ])
    error_message = "hever"
  }
}
