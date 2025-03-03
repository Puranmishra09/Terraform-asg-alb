# Region, VPC and Subnet Configuration
aws_region = "us-east-1"
vpc_id     = "vpc-xxxxxxxxxxx"
subnet_ids = ["subnet-xxxxxxxxxxxxx", "subnet-xxxxxxxxxxxxxx"]  # At least 2 for high availability

# EC2 Configuration
instance_type = "t3.micro"

# Load Balancer
alb_name = "my-application-lb"
alb_target_group_name = "web-target-group"
alb_target_port       = 80
alb_target_protocol   = "HTTP"

# Auto Scaling Group
asg_desired_capacity = 2
asg_min_size         = 2
asg_max_size         = 3
asg_name = "production-asg"

# Scaling Policies
scale_up_threshold   = 80
scale_down_threshold = 40

# CloudWatch Alarm Period (in seconds)
evaluation_periods = 2
metric_period      = 60
