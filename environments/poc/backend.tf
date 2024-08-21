terraform {
  backend "s3" {
    bucket         = "lambda-terraform-state-poc"
    key            = "state/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "lambda-terraform-state-poc"
  }
}