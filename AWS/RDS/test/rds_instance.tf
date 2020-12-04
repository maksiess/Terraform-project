resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 1
  identifier         = "aurora-cluster-demo-${count.index}"
  cluster_identifier = aws_rds_cluster.postgresql.cluster-QHG2ADO7OGRN3K5WD64BQTASH4
  instance_class     = "db.r4.large"
  engine             = aws_rds_cluster.postgresql.engine
  engine_version     = aws_rds_cluster.postgresql.engine_version
}