s3_bucket = "terraform-class-murodbey"       #Will be used to set backend.tf
vpc_id = "vpc-2d3c1b4a"
subnet1 = "subnet-894361d2"
subnet2 = "subnet-d5180eb2"
region = "us-west-1"
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