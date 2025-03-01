# VPC and Subnet Configuration
vpc_id     = "vpc-0e1eef52b7b47b7b6"
subnet_ids = ["subnet-0275f9c5a53135342", "subnet-01e5f67029f3e389a"]  # At least 2 for high availability

# EC2 Configuration
instance_type = "t2.micro"

# Auto Scaling Group
asg_desired_capacity = 2
asg_min_size         = 2
asg_max_size         = 3

# Load Balancer
alb_name = "my-application-lb"
alb_target_group_name = "web-target-group"
alb_target_port       = 80
alb_target_protocol   = "HTTP"


# Scaling Policies
scale_up_threshold   = 80
scale_down_threshold = 40

# CloudWatch Alarm Period (in seconds)
evaluation_periods = 2
metric_period      = 60
