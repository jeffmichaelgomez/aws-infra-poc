locals {
  name_prefix = "${var.project}-${var.env}"
  tags_all    = merge(var.tags, { Project = var.project, Env = var.env })
}

resource "aws_s3_bucket" "app_data" {
  bucket = "${local.name_prefix}-data-001"
  tags   = local.tags_all
} 
