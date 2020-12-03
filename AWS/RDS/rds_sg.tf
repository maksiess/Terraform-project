resource "aws_db_security_group" "rds_sg" {
  name = "rds_sg"

  ingress {
    cidr = "0.0.0.0/0"
  }
}