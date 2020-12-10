resource "aws_db_instance" "rds" {
  identifier             = var.identifier
  allocated_storage      = var.storage_cap
  storage_type           = var.storage_type
  engine                 = var.engine
  engine_version         = var.engine_version
  instance_class         = var.db_instance_type
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  name                   = var.name
  username               = var.username
  password               = var.password
  publicly_accessible    = true
  skip_final_snapshot    = true
  # db_subnet_group_name = "${aws_db_subnet_group.db.name}"
  # vpc_security_group_ids = ["${aws_security_group.db.id}"]
  # availability_zone = "us-east-2"
  depends_on = [
    aws_security_group.rds_sg
  ]
}