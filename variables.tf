
variable "region" {
    description = "Region to create Vpc"
    default = "us-east-2"
}

variable "env" {
  type        = string
  description = "Working Environment"
  default = "dev"
}

variable "system_name" {
  type        = string
  description = "System name"
  default = "lex"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string
  default = "10.0.0.0/16"
}
variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type = list(string)
  default = ["us-east-2a", "us-east-2c"]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}


variable "base_domain" {
  type        = string
  description = "Base domain"
  default = "lexolalomi.com"
}

variable "target_type" {
  type        = string
  description = "Target type for load balancer target group"
  default     = "ip"
}

variable "load_balancer_type" {
  type        = string
  description = "Type of load balancer"
  default     = "application"
}

variable "ssl_policy" {
  type        = string
  description = "SSL policy for the load balancer listener"
  default     = "ELBSecurityPolicy-2016-08"
}


variable "internal" {
    type = bool
    default = false 

}
