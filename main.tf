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

  tags = {
    Name = "Primeira instancia"
  }
}

#terraform init  // inicia um projeto ioc com terraform
#terraform plan  // detalha as configurações da infra na nuvem
#terraform apply // aplica aas configurações da infra na nuvem
#terraform destroy // limpa as configurações de ioc que foram aplicadas