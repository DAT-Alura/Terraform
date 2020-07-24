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
}