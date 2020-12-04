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

resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = var.number
  identifier         = "aurora-cluster-${count.index}"
  cluster_identifier = aws_rds_cluster.postgresql.id
  instance_class     = "db.r4.large"
  engine             = aws_rds_cluster.postgresql.engine
  engine_version     = aws_rds_cluster.postgresql.engine_version
}