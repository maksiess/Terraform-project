resource "aws_db_instance" "rds" {
	identifier = "postgresql"
	allocated_storage = 20
	storage_type = "gp2"
	engine = "postgresql"
	engine_version = "12.4"
	instance_class = "db.t2.micro"
	name = "postgresssql"
	username = "postgress"
	password = "foobarbaz"
	parameter_group_name = "default:postgres-12"
    availability_zone = "us-east-2"
	publicly_accessible = true
	# db_subnet_group_name = "${aws_db_subnet_group.db.name}"
	skip_final_snapshot = true #used to delete the repo in the future without this you cant delete. There are bugs reported 
	# vpc_security_group_ids = ["${aws_security_group.db.id}"]
}