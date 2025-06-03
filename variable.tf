variable "aws_region" {
  description = "AWS region to create resources in"
  default     = ""
}

variable "queue_name" {
  description = "Name of the SQS queue"
  default     = "my-terraform-queue"
}