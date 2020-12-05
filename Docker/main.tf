# data "aws_instance" "foo" {
#   instance_id = var.instance_id
# }

resource "null_resource" "test" {
  count = 1

  connection {
    user = "root"
    private_key="${file("/root/.ssh/id_rsa")}"
    host = "18.207.234.107"
    # agent = true
    timeout = "3m"
  }

  provisioner "remote-exec" {
    inline = [
        "yum install git -y",
        "git clone https://github.com/Murodbey/Terraform-project.git",
        "chmod +x /root/Terraform-project/Docker/vault_docker_compose/docker-install.sh",
        "cd /root/Terraform-project/Docker/vault_docker_compose/",
        ". docker-install.sh",
        "docker-compose up -d"
    ]

    # connection {
    #   type = "ssh"
    #   user = "ec2-user"
    #   host = "18.207.234.107"
    #   private_key = file(var.private_key_file)
    # }
    }
  }