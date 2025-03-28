variable "region" {
  description = "Region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "environment"
  type        = string
  default     = "demo"
}

variable "vpc_cidr" {
  description = "cidr"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "List of AZs"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_public_subnets" {
  description = "List of public subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_private_subnets" {
  description = "List of private subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
}

variable "vpc_database_subnets" {
  description = "List of database subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.20.0/24", "10.0.21.0/24", "10.0.22.0/24"]
}

variable "eks_version" {
  description = "EKS version"
  type        = string
  default     = "1.31"
}

variable "eks_worker_instance_type" {
  description = "Worker nodes Instance types"
  type        = list(string)
  default     = ["t2.micro"]
}

variable "eks_worker_min_size" {
  description = "Worker group min size"
  type        = number
  default     = 2
}

variable "eks_worker_max_size" {
  description = "Worker group max size"
  type        = number
  default     = 10
}

variable "eks_worker_desired_size" {
  description = "Worker group desired size"
  type        = number
  default     = 3
}
