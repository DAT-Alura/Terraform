# Perguntas

## Aula 1

1 - Sobre as características da ferramenta Terraform, podemos dizer que:

- __É uma ferramenta para o gerenciamento de infraestrutura__

> Alternativa correta! Sim, o Terraform tem como proposta criar e gerenciar sua infraestrutura.

- É uma ferramenta para gerenciamento de aplicações
- É uma ferramenta para gerenciamento de infraestrutura e aplicações

2 - Para nós configurarmos a infraestrutura, existem alguns requisitos que devem ser observados. Selecione-os abaixo:

- __Dentro da configuração, é mandatório o uso do bloco provider__

> Alternativa correta! Perfeito, através deste bloco, apontamos qual o provedor que iremos utilizar na configuração.

- O arquivo de configuração deve ser nomeado como main.tf
- __Podemos ter mais de um provider, ou seja, múltiplos providers configurados.__

> Alternativa correta! O Terraform permite a opção de trabalhar com múltiplos provedores.

3 - Para que possamos fazer o deploy, é necessário a seguinte sequência de comandos:

- plan, apply e init
- __init, plan e apply__

> Alternativa correta! Na primeira vez utilizamos o init, depois o plan na sequência (mostra todas as alterações, mas sem aplicá-las) e apply para efetivar as mudanças.

- plan, init e apply

## Aula 2

1 - Como deve ser configurado o security group para permitir acesso HTTPS à aplicação?

- __A__

``` tf
ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
}
```

> Alternativa correta! Não esqueça de incluir os ```CDIR_BLOCKS``` com os IPs permitidos.

- B

``` tf
ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
}
```

- C

``` tf
egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
}
```

2 - Na hora de utilizar os comandos plan ou apply, devemos considerar que:

- __Podemos utilizar diretamente o apply sem o plan__

> Alternativa correta! Sim, mesmo não sendo recomendável, o Terraform permite que você utilize diretamente o apply.

- Uma boa prática seria utilizar o apply e depois o plan
- O comando apply não funciona sem antes utilizar o plan

3 - Qual comando podemos utilizar para visualizar informações, como IPs, redes, etc, alocados em nossa infraestrutura?

- apply
- plan
- __show__

> Alternativa correta! O comando show lê o arquivo terraform.tfstate e exibe as informações associadas (IP, rede, etc).

## Aula 3

1 - Veja o exemplo abaixo:

``` tf
resource "aws_security_group" "https" {
    arn                    = "arn:aws:ec2:us-east-1:23232323232:security-group/sg-0586e4defc54ed1af"
    description            = "Allow TLS inbound traffic"
    egress                 = []
    id                     = "sg-0586e4defc54ed1af"
}
```

Como podemos utilizar a referência do security em nossa nova instância?

- __vpc_security_group_ids = ["${aws_security_group.https.id}"]__

> Alternativa correta! Para utilizar a referência, é preciso especificar os recursos e seus respectivos atributos. No exemplo, o .id.

- vpc_security_group_ids = ["${aws_security_group.https}"]
- vpc_security_group_ids = ["$sg-0586e4defc54ed1af"]

2 - Para utilizarmos as dependências entre os recursos, é necessário:

- __Utilizar o argumento ```depends_on```__

> Alternativa correta! Com o depends_on, é possível vincular recursos, desta forma a criação/exclusão de um implica respectivamente no outro.

- Criar os recursos sequencialmente, no arquivo de configuração
- Criar um arquivo depends.tf
