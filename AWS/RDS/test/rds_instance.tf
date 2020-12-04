resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 1
  identifier         = "aurora-cluster-3"
  cluster_identifier = "aurora-cluster"
  instance_class     = "db.r4.large"
  engine             = "aurora-postgresql"
  engine_version     = 11.7
}