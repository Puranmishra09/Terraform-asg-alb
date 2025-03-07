# Region, VPC and Subnet Configuration
aws_region = "us-east-1"
vpc_id     = "vpc-xxxxxxxxxxx"
subnet_ids = ["subnet-xxxxxxxxxxxxx", "subnet-xxxxxxxxxxxxxx"]  # At least 2 for high availability

# EC2 Configuration
instance_type = "t3.micro"
ssh_key_name = "key-pair-name"

# Load Balancer
alb_name = "my-application-lb"
alb_target_group_name = "web-target-group"

# Auto Scaling Group
asg_name = "production-asg"


