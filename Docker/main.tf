# data "aws_instance" "foo" {
#   instance_id = var.instance_id
# }

resource "null_resource" "test" {
  count = 1

  connection {
    user = "ec2-user"
    private_key="${file("/home/ec2-user/.ssh/id_rsa")}"
    host = "18.207.234.107"
    # agent = true
    timeout = "3m"
  }

  provisioner "remote-exec" {
    inline = [
        "sudo chmod +x /home/ec2-user/Terraform-project/Docker/vault_docker_compose/docker-install.sh",
        "sudo . /home/ec2-user/Terraform-project/Docker/vault_docker_compose/docker-install.sh",
        "sudo docker-compose /home/ec2-user/Terraform-project/Docker/vault_docker_compose/docker-compose.yml up -d"
    ]

    # connection {
    #   type = "ssh"
    #   user = "ec2-user"
    #   host = "18.207.234.107"
    #   private_key = file(var.private_key_file)
    # }
    }
  }