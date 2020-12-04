data "aws_db_cluster" "database" {
  db_instance_identifier = "aurora-cluster"
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 1
  identifier         = "aurora-cluster-4"
  cluster_identifier = data.aws_db_instance.database.db_instance_identifier
  instance_class     = "db.r4.large"
  engine             = data.aws_db_instance.database.engine
  engine_version     = 11.7
}