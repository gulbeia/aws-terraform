variable "vpc subnets" {
  type        = string
  default     = "Vpc"
  description = "This is the AWS VPC subnets public / private to use."
}

variable "public_subnets" {
  type        = string
  description = "The name to give the subnets"
}

variable "private_instance" {
  type        = string
  description = "The name to give the subnets"
}

variable "number_of_subnets" {
  type        = string
  description = "The number of subnets to launch"
}

