# data "aws_instance" "foo" {
#   instance_id = var.instance_id
# }

resource "null_resource" "test" {
  count = 1

  connection {
    user = "root"
    private_key= file("/root/.ssh/id_rsa")
    host = "18.207.234.107"
    timeout = "3m"
  }

  provisioner "remote-exec" {
    inline = [
        "yum install git -y",
        "git clone https://github.com/Murodbey/Terraform-project.git",
        "cd Terraform-project/Docker/vault_docker_compose/",
        "chmod +x docker-install.sh",
        "bash docker-install.sh",
        "docker-compose up -d"
      ]
    }
  }