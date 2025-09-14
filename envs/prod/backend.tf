terraform {
  backend "s3" {
    bucket         = "s3-tf-backend-135878023383"
    key            = "prod/terraform.tfstate"
    workspace_key_prefix = "prod" 
    region         = "ap-southeast-2"
    dynamodb_table = "tf-state-locks"
    encrypt        = true
  }
}
