terraform {
  backend "s3" {
    bucket         = "s3-tf-backend-135878023383"
    key            = "prod/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-state-locks"
    encrypt        = true
  }
}
