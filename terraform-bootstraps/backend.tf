terraform {
  backend "s3" {
    bucket         = "terraform-state-dev-826997462736 "
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}