terraform {
backend "s3" {
bucket = "jenkins-class-murodbey"
key = "jenkins2/us-east-1/tools/tools/jenkins.tfstate"
region = "us-east-1"
  }
}
