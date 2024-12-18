provider "aws" {
  region     = "eu-north-1"
}
resource "aws_instance" "myweb12" {
  ami             = "ami-02df5cb5ad97983ba"
  instance_type   = "t3.micro"
  key_name        = "my-terra-key"
  security_groups = ["allow_tls"]

  tags = {
    Name = "HR"
  }
}
