provider "aws" {
  region = "ap-southeast-1"
  default_tags {
    tags = {
      Project = "aws-cicd-prod"
      Env     = "prod"
    }
  }
}