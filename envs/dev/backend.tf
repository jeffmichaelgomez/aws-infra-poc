terraform {
  backend "s3" {
    bucket               = "s3-tf-backend-135878023383"
    key                  = "dev/terraform.tfstate"
    region               = "ap-southeast-2"
    dynamodb_table       = "tf-state-locks"
    encrypt              = true
  }
}
