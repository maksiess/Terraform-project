terraform {
  backend "s3" {
    bucket = "terraform-class-murodbey"

    key = "r1soft-project/us-east-1/tools/tower/tower.tfstate"

    region = "us-east-1"
  }
}
