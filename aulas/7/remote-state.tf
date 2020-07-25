terraform {
    backend "remote" {
        hostname = "app.terraform.io"
        organization = "DAT-Alura"

        workspaces {
            name = "aws-dat-alura"
        }
    }
}