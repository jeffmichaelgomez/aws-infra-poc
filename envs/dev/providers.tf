provider "aws" {
  region = "ap-southeast-1"
  default_tags {
    tags = {
      Project = "aws-cicd-dev"
      Env     = "dev"
    }
  }
}
