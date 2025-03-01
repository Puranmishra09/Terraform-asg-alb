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

variable "min_size" {
  description = "Minimum number of instances in ASG"
  type        = number
}

variable "max_size" {
  description = "Maximum number of instances in ASG"
  type        = number
}

variable "desired_capacity" {
  description = "Desired number of instances in ASG"
  type        = number
}

variable "alb_name" {
  description = "Name of the ALB"
  type        = string
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
