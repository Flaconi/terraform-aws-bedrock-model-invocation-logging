resource "aws_s3_bucket" "this" {
  bucket        = var.bucket
  force_destroy = true
  tags          = var.tags
}

resource "aws_s3_bucket_policy" "this" {
  bucket = aws_s3_bucket.this.bucket

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "bedrock.amazonaws.com"
      },
      "Action": [
        "s3:*"
      ],
      "Resource": [
        "${aws_s3_bucket.this.arn}/*"
      ],
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "${data.aws_caller_identity.this.account_id}"
        },
        "ArnLike": {
          "aws:SourceArn": "arn:aws:bedrock:${data.aws_region.this.name}:${data.aws_caller_identity.this.account_id}:*"
        }
      }
    }
  ]
}
EOF
}

resource "aws_bedrock_model_invocation_logging_configuration" "this" {
  depends_on = [
    aws_s3_bucket_policy.this
  ]

  logging_config {
    embedding_data_delivery_enabled = var.embedding_data_delivery_enabled
    image_data_delivery_enabled     = var.image_data_delivery_enabled
    text_data_delivery_enabled      = var.text_data_delivery_enabled
    s3_config {
      bucket_name = aws_s3_bucket.this.id
      key_prefix  = var.key_prefix
    }
  }
}
