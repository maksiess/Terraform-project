resource "aws_rds_cluster" "postgresql" {
  cluster_identifier      = var.identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  database_name           = var.name
  master_username         = var.username
  master_password         = var.password
  skip_final_snapshot     = true
#   availability_zones      = ["us-west-2a", "us-west-2b", "us-east-2"]
#   preferred_backup_window = "07:00-09:00"
#   backup_retention_period = 5
}