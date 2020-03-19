# Below code is used to set backend only
s3_bucket                       	=	"terraform-class-murodbey"
s3_folder_region                	=	"us-east-1"
vpc_id		    	            	=	"vpc-0f29a8cad47a17a5e"
zone_id			                    =	"Z2JX68ZT77Y2OW" 
domain			                    =	"murodbey.com"
base_domain			                =	"murodbey.com"
region 			                    = 	"us-east-1"
s3_folder_project               	=   "r1soft-project" 
ami_id                              =   "ami-0fc61db8544a617ed" 
instance_type                       =   "t2.micro"
key_name                            =   "test"
route_53                            =   "murodbey.com"
ssh_key_location                    =   "~/.ssh/id_rsa"
user                                =   "ec2-user"


# Please do not change below
environment                     	=   	"tower"
s3_folder_type                  	=   	"tools"
s3_tfstate_file                 	=   	"tower.tfstate"

