provider "aws" {
  region     = "eu-west-3"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-04a20f4b19f8a7a88"  # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"
  tags = {
    Name = "JenkinsEC2"
  }
}
