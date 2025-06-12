provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "example" {
  ami           = "ami-04a20f4b19f8a7a88"  # Amazon Linux 2 AMI (for example)
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-GitHubActions"
  }
}
