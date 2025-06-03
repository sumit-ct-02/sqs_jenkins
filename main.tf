terraform {
  backend "s3" {
    bucket = "backstage-interns-project"
    key    = "project/sqs_state.tfstate"
    region = "ap-south-1"
    encrypt = true
    use_lockfile = true
  }
}
resource "aws_sqs_queue" "my_queue" {
  name                      = var.queue_name
  delay_seconds            = 0
  max_message_size         = 262144
  message_retention_seconds = 345600
  receive_wait_time_seconds = 0
}
