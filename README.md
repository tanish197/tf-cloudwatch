# Terraform AWS CloudWatch Alarm README

## Introduction

This repository contains the Terraform configuration to create an AWS CloudWatch Alarm. The CloudWatch Alarm is designed to monitor a specific metric and trigger actions based on defined conditions.

## Prerequisites

Before using this Terraform configuration, ensure you have the following prerequisites:

1. **Terraform**: Make sure you have Terraform installed on your local machine. You can download it from the official Terraform website: https://www.terraform.io/downloads.html

2. **AWS Account**: You need an AWS account to create resources. Set up your AWS credentials or IAM roles to authenticate Terraform with AWS.

## Usage

Follow the steps below to use this Terraform configuration to create an AWS CloudWatch Alarm:

1. **Clone the Repository**: Clone this Git repository to your local machine.

2. **Update Variables (Optional)**: Open the `main.tf` file and update the variables as needed. Variables such as the AWS region, metric name, threshold, and alarm actions (SNS topic ARN) can be customized.

3. **Initialize Terraform**: In your terminal, navigate to the cloned repository folder and run `terraform init` to initialize Terraform and download the necessary providers.

4. **Review the Plan**: Run `terraform plan` to see the planned changes. This step is optional but allows you to review what resources will be created before proceeding.

5. **Apply Changes**: If everything looks correct, run `terraform apply` to create the AWS CloudWatch Alarm. Type `yes` when prompted to confirm the creation.

## Configuration Details

The `main.tf` file contains the Terraform configuration to create an AWS CloudWatch Alarm. Below are some essential details about the configuration:

- **Metric**: The alarm monitors a specific metric in the AWS namespace "AWS/EC2." The metric name is "CPUUtilization," but you can modify it as needed to monitor other metrics.

- **Threshold**: The alarm is triggered when the average CPU utilization of an EC2 instance exceeds the specified threshold (default is 80%) for two consecutive periods of five minutes. You can adjust the threshold and evaluation periods based on your requirements.

- **Alarm Actions**: When the alarm is triggered, it sends a notification to an SNS topic. The `alarm_actions` attribute should contain the ARN of the SNS topic you want to use for notifications.

## Cleaning Up

To clean up the resources created by this Terraform configuration, follow these steps:

1. Run `terraform destroy` to destroy all the resources. Type `yes` when prompted to confirm the destruction.

2. After the Terraform command completes, the AWS CloudWatch Alarm and any associated resources will be deleted.

## Conclusion

Using this Terraform configuration, you can easily create an AWS CloudWatch Alarm to monitor critical metrics and take automated actions when conditions are met. Feel free to customize the configuration according to your specific monitoring needs.

For any questions or assistance, please reach out to the repository maintainers.

Happy monitoring with Terraform and AWS CloudWatch!
