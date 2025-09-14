provider "aws" {
  region = "ap-southeast-2"
  default_tags {
    tags = {
      Project = "aws-cicd-prod"
      Env     = "prod"
    }
  }
}