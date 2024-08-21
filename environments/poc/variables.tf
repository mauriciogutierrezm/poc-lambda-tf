variable "project" {
  description = "The project name"
  type        = string
  default     = "lambda-nodejs-poc"
}

variable "environment" {
  description = "The environment name"
  type        = string
  default     = "poc"
}

variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-2"
}

variable "tags" {
  description = "Tags for the bucket"
  type        = map(string)
  default = {
    Project     = "lambda-nodejs-poc"
    Environment = "poc"
  }
}

variable "vpc_id" {
  description = "The VPC ID to deploy resources"
  default     = "vpc-0bb93f2c0dd0ca413" // VPC ID on poc
}

variable "private_subnet_ids" {
  description = "The Subnet IDs to deploy resources"
  type        = list(string)
  default     = ["subnet-00ffb8c2d63dfd53f", "subnet-06f6d833fb8735c1c"]
}

variable "public_subnet_ids" {
  description = "The Subnet IDs to deploy resources"
  type        = list(string)
  default     = ["subnet-021d6b42b7e137f8c", "subnet-0df3dad7a8cd0f2b7"]
}

variable "default_security_group_id" {
  description = "The Security Group IDs to deploy resources"
  type        = list(string)
  default     = ["sg-0c98182f618919030"] // Security Group ID on poc
}

variable "lambda_function_name" {
  description = "function name for lambda"
  type        = string
  default     = "lambda-nodejs-poc"
}

variable "logs_retention_in_days" {
  description = "specifies the number of days you want to retain log events in the specified log group"
  type        = number
  default     = 90
}


#Layer
variable "lambda_layer_name" {
  description = "Name for the Lambda function's Layer"
  type        = string
  default     = "lambda-nodejs-layer-poc"
}
