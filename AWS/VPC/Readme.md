```
git clone https://github.com/Murodbey/Terraform-project.git
cd Terraform-project/AWS/VPC
source setenv.sh configurations/REGION/vpc.tfvars
terraform apply -var-file=configurations/REGION/vpc.tfvars
```