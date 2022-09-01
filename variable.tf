#Project
variable "project_name" {
  description = "Project Name"
}

#VPC
variable "region" {
  description = "AWS Region"
}

variable "az_count" {
  type    = number
  description = "AZ Count"
}

#tag value
variable "tag_env" {
  description = "Environment tag Value"
}

variable "tag_proj" {
  description = "Project tag Value"
}