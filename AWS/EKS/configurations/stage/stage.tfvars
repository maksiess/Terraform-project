s3_bucket = "terraform-class-murodbey"       #Will be used to set backend.tf
vpc_id = "vpc-0d3884aebbe2d9352"
subnet1 = "subnet-01913d5d3ef3dfb1c"
subnet2 = "subnet-0321f832144f1259d"
subnet3 = "subnet-081911ad50e805d78"
region = "us-west-2"
cluster_name = "cluster-stage"
environment = "stage"



s3_folder_project = "application"            #Will be used to set backend.tf
s3_folder_region = "us-east-1"               #Will be used to set backend.tf
s3_folder_type = "state"                     #Will be used to set backend.tf
s3_tfstate_file = "infrastructure.tfstate"   #Will be used to set backend.tf



instance_type = "t2.micro"
asg_max_size = "96" 
asg_min_size = "3"
asg_desired_capacity = "6"
cluster_version = "1.14"
