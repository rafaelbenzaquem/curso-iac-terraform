terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0d70546e43a941d70"
  instance_type = "t2.micro"
  key_name      = "teste-iac-oregon"
  tags          = {
    Name = "Instância EC2 com Java 17"
  }
}

#Aula 1
#terraform init  // inicia um projeto ioc com terraform
#terraform plan  // detalha as configurações da infra na nuvem
#terraform apply // aplica aas configurações da infra na nuvem
#terraform destroy // limpa as configurações de ioc que foram aplicadas

#Aula 2
#1 - criar par de chave ssh e associar a instância ec2
#2 - configurar o objeto resource ao par de chave ssh
#3 - configurar security group com regras de entrada e saida para ipv4 e ipv6
#3 - acessar instância viva cliente ssh
## ssh -i "teste-iac-oregon.pem" ubuntu@ec2-52-10-62-48.us-west-2.compute.amazonaws.com

#Aula 4
#1 - configurando os arquivos para executar o ansible, hosts.yaml e playbook.yaml
#2 - executando ansible para alterar uma instância ec2 na aws
##  ansible-playbook playbook.yaml -u ubuntu --private-key teste-iac-oregon.pem -i hosts.yaml