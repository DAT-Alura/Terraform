resource "aws_security_group" "acesso-ssh" {
    name = "acesso-ssh"
    description = "acesso-ssh"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.cdirs_acesso_remoto
    }

    tags = {
        Name = "ssh"
    }
}

resource "aws_security_group" "acesso-ssh-us-west-1" {
    provider = aws.us-west-1
    name = "acesso-ssh"
    description = "acesso-ssh"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.cdirs_acesso_remoto
    }

    tags = {
        Name = "ssh"
    }
}