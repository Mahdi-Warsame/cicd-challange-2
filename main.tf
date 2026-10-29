terraform {
  required_version = ">= 1.5.0"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

locals {
  app_name="hello-app"
}

output "application_name" {
  description = "Name of the application"
  value       = local.app_name
}

output "deployment_environment" {
  description = "Selected deployment environment"
  value       = var.environment
}
