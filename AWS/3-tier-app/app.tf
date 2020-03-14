data "terraform_remote_state" "dev" {
  backend = "s3"
  config = {
    bucket = "terraform-class-murodbey"
    key    = "tower/us-east-1/tools/virginia/tower.tfstate"
    region = "us-east-1"
  }
}