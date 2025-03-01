variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "VPC ID where resources will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnets for the ASG and ALB"
  type        = list(string)
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "asg_min_size" {
  description = "Minimum number of instances in ASG"
  type        = number
  default     = 2
}

variable "asg_max_size" {
  description = "Maximum number of instances in ASG"
  type        = number
  default     = 5
}

variable "asg_desired_capacity" {
  description = "Desired number of instances in ASG"
  type        = number
  default     = 2
}

variable "alb_name" {
  description = "Name of the Application Load Balancer"
  type        = string
  default     = "web-alb"
}

variable "alb_target_group_name" {
  description = "Name of the Target Group"
  type        = string
  default     = "web-tg"
}

variable "alb_target_port" {
  description = "Port for the Target Group"
  type        = number
  default     = 80
}

variable "alb_target_protocol" {
  description = "Protocol for the Target Group"
  type        = string
  default     = "HTTP"
}

variable "scale_up_threshold" {
  description = "CPU utilization threshold for scaling up"
  type        = number
  default     = 80
}

variable "scale_down_threshold" {
  description = "CPU utilization threshold for scaling down"
  type        = number
  default     = 40
}
