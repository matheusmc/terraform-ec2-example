terraform {
  backend "s3" {
    bucket         = "mmc-bucket-terraform"
    key            = "terraform.tfstate"
    region         = "us-west-2"  # Substitua pela região correta
    encrypt        = true
    dynamodb_table = "terraform_locks"  # Opcional: Use uma tabela DynamoDB para bloqueio de estado
  }
}