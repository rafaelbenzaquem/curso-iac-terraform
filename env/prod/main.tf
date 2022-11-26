module "aws-prod" {
  source = "../../infra"
  instancia = "t2.micro"
  regiao_aws = "us-west-2"
  chave = "iac-prod"
  grupoDeSeguranca = "Producao"
  minimo = 4
  maximo = 4
  nomeGrupo = "Prod"
  producao = true
}
