variable "virginia_cidr" {
  description = "CIDR block for the VPC in Virginia"
  type        = string
}

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}

variable "tags" {
  description = "Project tags"
  type        = map(string)
}

variable "ingress_cidr" {
  description = "CIDR for ingress traffic"
  type = string
}

variable "ec2_specs" {
  description = "EC2 instance specifications"
  type = map(string)
}

variable "enabled_monitoring" {
  description = "value to enable monitoring"
  type = bool
}

variable "enabled_monitoring_2" {
  description = "value to enable monitoring"
  type = number
}

variable "ingress_rules" {
  description = "List of ingress rules"
  type        = list(object({
    from_port = number,
    to_port = number,
    ip_protocol = string,
    description = string,
    tags = map(string)
  }))
}