resource "aws_cloudwatch_metric_alarm" "ialarm" {
  alarm_name          = "HighCPUUtilizationAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "240"  # 4 minutes
  statistic           = "Average"
  threshold           = "75"
  alarm_description   = "Alarm when CPU utilization is greater than 80% for 2 consecutive periods of 5 minutes."
  alarm_actions       = [aws_sns_topic.topic.arn]  # Replace with your SNS topic ARN
  dimensions = {
    InstanceId = "i-07d3e3022c2aa8793"  # Replace with the EC2 instance ID you want to monitor
  }
}

