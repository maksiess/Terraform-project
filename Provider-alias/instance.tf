resource "aws_instance" "virginia" {
  provider      = "aws.virginia"
  ami           = "ami-0fc61db8544a617ed"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "ohio" {
  provider      = "aws.ohio"
  ami           = "ami-0e01ce4ee18447327"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "california" {
  provider      = "aws.california"
  ami           = "ami-09a7fe78668f1e2c0"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "oregon" {
  provider      = "aws.oregon"
  ami           = "ami-0ce21b51cb31a48b8"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
