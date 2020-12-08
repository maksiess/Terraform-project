s3_bucket = "terraform-class-murodbey"       #Will be used to set backend.tf
vpc_id = "vpc-0b5e008dd2d9681e3"
subnet1 = "subnet-0820acadf9f3e21e8"
subnet2 = "subnet-06003e02a6c4fc1d0"
subnet3 = "subnet-08e27d2980b8a8dd3"
region = "eu-west-1"
cluster_name = "cluster-qa"
environment = "qa"



s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-1"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate"   #Will be used to set backend.tf



instance_type = "t2.micro"
asg_max_size = "96" 
asg_min_size = "3"
asg_desired_capacity = "6"
cluster_version = "1.14"