resource "null_resource" "webservers" {
  provisioner "local-exec" {
    command = <<EOH
      for i in {1..12}; do
        echo "Checking SSH connectivity..."
        ansible -i invfile pvt -m ping && break
        echo "Retrying in 10s..."
        sleep 10
      done
    EOH
  }

  depends_on = [
    local_file.ansible-inventory-file
  ]
}




