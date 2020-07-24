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
