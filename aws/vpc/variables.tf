variable "vpc_cidr_block" {
  description = "The base CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "env_name" {
  description = "The name of the target environent."
}