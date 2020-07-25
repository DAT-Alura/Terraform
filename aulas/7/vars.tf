variable "amis" {
    type = map

    default = {
        "sa-east-1" = "ami-0faf2c48fc9c8f966"
        "us-west-1" = "ami-01311df3780ebd33e"
    }
}

variable "cdirs_acesso_remoto" {
    type = list

    default = [
        "186.203.24.87/32",
        "186.203.24.88/32"
    ]
}

// considera como string por default
variable "key_name" {
    default = "terraform-aws"
}