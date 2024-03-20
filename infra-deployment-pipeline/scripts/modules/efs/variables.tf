#####################
#       ECR         #
#####################

variable "performance_mode" {
  description = "Provide efs performance mode"
  type        = string
  default     = ""
}

variable "throughput_mode" {
  description = "Provide efs throughput mode"
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "Provide subnet id"
  type        = list
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}