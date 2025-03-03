locals {
  vpc_id = var.vpc_id
  http_port = 80
  egress_port = 0
}
 
resource "aws_security_group" "alb_sg" {
  name_prefix = "alb-sg-"
  vpc_id      = local.vpc_id
 
  ingress {
    from_port   = local.http_port
    to_port     = local.http_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  egress {
    from_port   = local.egress_port
    to_port     = local.egress_port
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
 
resource "aws_security_group" "asg_sg" {
  name_prefix = "asg-sg-"
  vpc_id      = local.vpc_id
 
  ingress {
    from_port       = local.http_port
    to_port         = local.http_port
    protocol        = "tcp"
    security_groups = [aws_security_group.alb_sg.id]
  }
 
  egress {
    from_port   = local.egress_port
    to_port     = local.egress_port
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
