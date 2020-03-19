s3_bucket = "terraform-class-murodbey"       #Will be used to set backend.tf
vpc_id = "vpc-05347346b0bd2f24b"
subnet1 = "subnet-00097aaa8fd113571"
subnet2 = "subnet-007fe27426b2d246c"
subnet3 = "subnet-0a04e9ada3b58b504"
region = "us-east-2"
cluster_name = "cluster-prod"
environment = "prod"



s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-1"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate"   #Will be used to set backend.tf



instance_type = "t2.micro"
asg_max_size = "96" 
asg_min_size = "3"
asg_desired_capacity = "6"
cluster_version = "1.14"