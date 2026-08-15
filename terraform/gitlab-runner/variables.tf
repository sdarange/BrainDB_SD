variable "aws-region" {
  description = "AWS region to deploy"
  type        = string
}

variable "iam-role" {
  description = "Name for the IAM role attached to the runner instance"
  type        = string
}

variable "ami-id" {
  description = "AMI ID for instance"
  type        = string
}

variable "instance-type" {
  description = "EC2 instance type for the runner host"
  type        = string
  default     = "t3.large"
}

variable "key-name" {
  description = "Name of an EXISTING EC2 key pair, used for SSH access"
  type        = string
}

variable "root-volume-size" {
  description = "Root EBS volume size in GB (gp3)"
  type        = number
}

variable "availability-zone" {
  description = "AZ to place the subnet in. Must be in aws-region — update both together if you change region."
  type        = string
}

variable "allowed-ssh-cidr" {
  description = "CIDR allowed to SSH into the runner"
  type        = string
  default     = "0.0.0.0/0"
}

variable "instance-name" {}

variable "vpc-name" {}
variable "igw-name" {}
variable "rt-name" {}
variable "subnet-name" {}
variable "sg-name" {}
