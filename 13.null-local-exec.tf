resource "time_sleep" "wait_30s" {
  create_duration = "30s"
}

resource "null_resource" "webservers" {
  depends_on = [
    local_file.ansible-inventory-file,
    time_sleep.wait_30s
  ]

  provisioner "local-exec" {
    command = "ansible -i invfile pvt -m ping"
  }
}




