s3_bucket = "terraform-class-murodbey"       #Will be used to set backend.tf
vpc_id = "vpc-05347346b0bd2f24b"
subnet1 = "subnet-007fe27426b2d246c"
subnet2 = "subnet-0a04e9ada3b58b504"
subnet3 = "subnet-00097aaa8fd113571"
region = "us-east-2"
cluster_name = "qa-cluster"
environment = "qa"



s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-1"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate"   #Will be used to set backend.tf



instance_type = "t2.micro"
asg_max_size = "48" 
asg_min_size = "3"
asg_desired_capacity = "3"
cluster_version = "1.14"