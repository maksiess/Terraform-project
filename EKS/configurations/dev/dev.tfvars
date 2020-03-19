s3_bucket = "terraform-class-murodbey"       #Will be used to set backend.tf
vpc_id = "vpc-0f29a8cad47a17a5e"
subnet1 = "subnet-008608e4efd380a35"
subnet2 = "subnet-0aaaa637222d1e7c4"
subnet3 = "subnet-02c8ee4fc3650b958"
region = "us-east-1"
cluster_name = "cluster-dev"
environment = "dev"



s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-1"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate"   #Will be used to set backend.tf



instance_type = "t2.micro"
asg_max_size = "96" 
asg_min_size = "3"
asg_desired_capacity = "6"
cluster_version = "1.14"



# jenkins will provide 
## environment = "dev"
## region = "us-west-2"
## cluster_name = "dev-cluster"
## instance_type = "t2.micro"
## asg_max_size = "48" 
## asg_min_size = "3"
## asg_desired_capacity = "3"
## cluster_version = "1.14"





