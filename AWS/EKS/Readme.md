# Use terraform 0.12 version for this code.

### Change the following lines
s3_bucket = "terraform-class-murodbey"       #Will be used to set backend.tf
vpc_id = "vpc-0f29a8cad47a17a5e"
subnet1 = "subnet-008608e4efd380a35"
subnet2 = "subnet-0aaaa637222d1e7c4"
subnet3 = "subnet-02c8ee4fc3650b958"



### Install kubectl  and AWS CLI

```
yum install awscli -y
```

## kubectl install command below manually
```
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.14.0/bin/linux/amd64/kubectl4
chmod +x kubectl
sudo mv kubectl /bin/
kubectl version
```

## terraform 0.12 version installation
```
wget https://releases.hashicorp.com/terraform/0.12.23/terraform_0.12.23_linux_amd64.zip
unzip
./terraform version
sudo mv terraform /bin/terraform_0.12.23
```

## terraform apply process
```
source setenv.sh  configurations/dev/dev.tfvars
terraform_0.12.23 init
terraform_0.12.23 apply -var-file configurations/dev/dev.tfvars
```

## Possible errors
Invalid choice: 'eks', maybe you meant: * es

Run: 
```
sudo pip install awscli --ignore-installed six
```
