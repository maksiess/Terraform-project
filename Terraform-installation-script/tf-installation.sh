#!/bin/bash
sudo yum install wget -y
wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
unzip terraform_0.11.11_linux_amd64.zip
sudo mv terraform /bin/
terraform --version
terraform --help
sudo yum install git -y