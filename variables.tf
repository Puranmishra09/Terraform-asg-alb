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

variable "asg_desired_capacity" {
  description = "The desired number of EC2 instances in the ASG"
  type        = number
}

variable "asg_min_size" {
  description = "The minimum number of instances in the ASG"
  type        = number
}

variable "asg_max_size" {
  description = "The maximum number of instances in the ASG"
  type        = number
}
variable "alb_name" {
  description = "Name of the ALB"
  type        = string
}
variable "alb_target_group_name" {
  description = "Name of the ALB target group"
  type        = string
}

variable "alb_target_port" {
  description = "Port on which the ALB target group listens"
  type        = number
}

variable "alb_target_protocol" {
  description = "Protocol for the ALB target group"
  type        = string
}

variable "asg_name" {
  default = "my-auto-scaling-group"
}
variable "scale_up_threshold" {
  description = "CPU utilization percentage for scale-up"
  type        = number
}

variable "scale_down_threshold" {
  description = "CPU utilization percentage for scale-down"
  type        = number
}

variable "evaluation_periods" {
  description = "Number of evaluation periods for CloudWatch alarms"
  type        = number
}

variable "metric_period" {
  description = "Time period in seconds for CloudWatch metric"
  type        = number
}
