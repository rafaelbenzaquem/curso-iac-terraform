module "aws-dev" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-west-2"
  chave = "iac-dev"
  grupo_acesso = "grupo_acesso_dev"
  minimo = 0
  maximo = 1
  nomeGrupoScala = "grupoEscalaDev"
}
