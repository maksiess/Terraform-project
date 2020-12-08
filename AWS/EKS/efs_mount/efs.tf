data "aws_eks_cluster" "cluster-dev" {
  name = "cluster-dev"
}

resource "aws_efs_file_system" "efs_eks" {
  creation_token = var.cluster_name

  tags = {
    Name = var.cluster_name
  }
}

resource "aws_efs_mount_target" "example" {
  count = 2
  file_system_id = aws_efs_file_system.example.id
  subnet_id = aws_subnet.this.*.id[count.index]
  security_groups = [aws_security_group.eks-cluster.id]
}