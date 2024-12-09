output "bucket_name" {
  description = "The name of the created S3 bucket."
  value       = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  description = "The ARN of the created S3 bucket."
  value       = aws_s3_bucket.this.arn
}

output "bucket_policy_id" {
  description = "The ID of the S3 bucket policy."
  value       = aws_s3_bucket_policy.this.id
}

output "logging_bucket_name" {
  description = "The name of the S3 bucket used for Bedrock model invocation logging."
  value       = aws_s3_bucket.this.bucket
}

output "key_prefix" {
  description = "The key prefix used for the Bedrock logging configuration."
  value       = var.key_prefix
}
