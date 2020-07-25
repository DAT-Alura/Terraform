provider "aws" {
    version = "~> 2.0"
    region = "sa-east-1"
}

resource "aws_instance" "dev" {
    count = 3
    ami = "ami-0faf2c48fc9c8f966"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
        Name = "dev${count.index}"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_instance" "dev4" {
    ami = "ami-0faf2c48fc9c8f966"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
        Name = "dev4"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
    depends_on = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev5" {
    ami = "ami-0faf2c48fc9c8f966"
    instance_type = "t2.micro"
    key_name = "terraform-aws"
    tags = {
        Name = "dev5"
    }
    vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_security_group" "acesso-ssh" {
    name = "acesso-ssh"
    description = "acesso-ssh"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["186.203.24.87/32"]
    }

    tags = {
        Name = "ssh"
    }
}

resource "aws_s3_bucket" "dev4" {
  bucket = "bucket-dev4"
  acl    = "private"

  tags = {
    Name        = "bucket-dev4"
  }
}