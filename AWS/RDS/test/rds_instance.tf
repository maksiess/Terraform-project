data "aws_rds_cluster" "database" {
  cluster_identifier = "aurora-cluster"
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 1
  identifier         = "aurora-cluster-4"
  cluster_identifier = data.aws_rds_cluster.database.cluster_identifier
  instance_class     = "db.r4.large"
  engine             = data.aws_rds_cluster.database.engine
  engine_version     = 11.7
}