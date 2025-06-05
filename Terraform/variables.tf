variable "region" {
  description = "AWS region"
  default     = "eu-north-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.11.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  default     = "10.11.1.0/24"
}

variable "availability_zone" {
  description = "Availability Zone for the subnet"
  default     = "eu-north-1a"
}

variable "allowed_ingress_cidr" {
  description = "CIDR block allowed for ingress traffic"
  default     = "0.0.0.0/0"
}

variable "ssh_user" {
  description = "Default SSH user for the EC2 instance"
  default     = "ubuntu"
}
