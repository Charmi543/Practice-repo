provider "aws" {
  region     = "eu-west-3"

}

resource "aws_instance" "my_ec2" {
  ami           = "ami-number-instance"  # Amazon Linux 2 (us-east-1)
  instance_type = "t2.micro"
  tags = {
    Name = "JenkinsEC2"
  }
}
