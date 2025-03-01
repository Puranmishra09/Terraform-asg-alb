resource "aws_launch_template" "web_lt" {
  name_prefix   = "web-template-"
  image_id      = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  security_group_names = [aws_security_group.asg_sg.id]
}

resource "aws_autoscaling_group" "web_asg" {
  desired_capacity     = var.asg_desired_capacity
  min_size             = var.asg_min_size
  max_size             = var.asg_max_size
  vpc_zone_identifier  = var.subnet_ids
  target_group_arns    = [aws_lb_target_group.web_tg.arn]

  launch_template {
    id      = aws_launch_template.web_lt.id
    version = "$Latest"
  }
}
