variable "region" {
  description = "Provide AWS region to deploy"
  type        = string
  default     = ""
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = ""
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = ""
}

variable "public_subnets_cidr" {
  description = "Provide public subnet CIDR"
  type        = list
  default     =  []
}

variable "private_subnets_cidr" {
  description = "Provide private subnet CIDR"
  type        = list
  default     = []
}

variable "availability_zones" {
  description = "Provide availability zones"
  type        = list
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

