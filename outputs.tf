output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.web_alb.dns_name
}

output "asg_name" {
  description = "The name of the Auto Scaling Group"
  value       = aws_autoscaling_group.web_asg.name
}

output "launch_template_id" {
  description = "The ID of the launch template used by the ASG"
  value       = aws_launch_template.web_lt.id
}

output "target_group_arn" {
  description = "The ARN of the ALB target group"
  value       = aws_lb_target_group.web_tg.arn
}

output "ec2_instance_ids" {
  description = "IDs of the EC2 instances in the Auto Scaling Group"
  value       = aws_autoscaling_group.web_asg.instances[*].id
}

output "vpc_id" {
  description = "VPC ID where resources are deployed"
  value       = var.vpc_id
}
