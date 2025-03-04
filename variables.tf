variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnets for the ASG and ALB"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ssh_key_name" {
  description = "The name of the SSH key pair to use for EC2 instances"
  type        = string
}

variable "alb_name" {
  description = "Name of the ALB"
  type        = string
}
variable "alb_target_group_name" {
  description = "Name of the ALB target group"
  type        = string
}

variable "asg_name" {
  default = "my-auto-scaling-group"
}

