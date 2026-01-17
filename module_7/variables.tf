variable "aws_region" {
  type        = string
  description = "AWS region to deploy to"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "AWS CLI profile name to use"
}

variable "bucket_name" {
  type        = string
  description = "Globally unique S3 bucket name for the assignment"
}

variable "tags" {
  type        = map(string)
  description = "tag specific to assignment"
}

variable "instance_type" {
  type        = string
  description = "ec2 instance type"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID to deploy into"
}

variable "key_name" {
  type        = string
  description = "Existing EC2 key pair name in us-east-1 (required for SSH)"
}

