variable "aws_region" {
  type        = string
  description = "AWS region to deploy into (e.g., us-east-1)"
}

variable "aws_profile" {
  type        = string
  description = "Named AWS CLI profile to use (not default)"
}

variable "project_name" {
  type        = string
  description = "Prefix for naming AWS resources"
  default     = "ostad-fahad-module-8"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  type        = string
  description = "Public subnet CIDR block"
  default     = "10.0.7.0/24"
}

variable "private_subnet_cidr" {
  type        = string
  description = "Private subnet CIDR block"
  default     = "10.0.8.0/24"
}

variable "az" {
  type        = string
  description = "Availability Zone for both subnets (e.g., us-east-1a)"
}

variable "ssh_allowed_cidr" {
  type        = string
  description = "Your public IP in CIDR form for SSH access (e.g., 203.0.113.10/32)"
  default     = "0.0.0.0/0"
}
