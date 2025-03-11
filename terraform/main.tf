provider "aws" {
  region = "eu-west-3" # Change la région si besoin
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0fd9bce3a3384b635"
  instance_type = "t2.micro"

  key_name      = "clekevin"

  vpc_security_group_ids = [aws_security_group.allow_ssh_http.id]

  tags = {
    Name = "Mon-Instance-Terraform"
  }
}

resource "aws_security_group" "allow_ssh_http" {
  name        = "allow_ssh_http"
  description = "Autorise SSH et HTTP"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
