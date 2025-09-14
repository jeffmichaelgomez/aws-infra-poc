provider "aws" {
  region = "ap-southeast-2"
  default_tags {
    tags = {
      Project = "aws-cicd-dev"
      Env     = "dev"
    }
  }
}
