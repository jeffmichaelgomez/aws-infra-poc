# Name of your project or application
variable "project" {
  type        = string
  description = "Project or application name (used in resource naming and tagging)."
}

# Environment name (dev, prod, infra)
variable "env" {
  type        = string
  description = "Deployment environment (e.g., dev, prod, infra)."
}

# Tags map applied to all resources
variable "tags" {
  type        = map(string)
  description = "Common tags/labels to apply to all resources."
  default     = {}
}

# (Optional) AWS region override
# Usually you set this in providers.tf, but you can make it variable-driven if you want flexibility.
variable "region" {
  type        = string
  description = "AWS region to deploy resources in."
  default     = "ap-southeast-2"
}
