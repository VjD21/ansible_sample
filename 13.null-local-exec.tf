# 
resource "null_resource" "webservers" {
  provisioner "local-exec" {
    command = <<EOH
      sleep 60   # increase delay if hosts need more time
      ansible -i invfile pvt -m ping
    EOH
  }
  depends_on = [local_file.ansible-inventory-file]
}
