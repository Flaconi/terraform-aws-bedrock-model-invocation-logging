data "aws_caller_identity" "this" {}

data "aws_region" "this" {}

data "aws_iam_session_context" "this" {
  arn = data.aws_caller_identity.this.arn
}

# ------------------------------------------------------------------------------------------------
# S3 Bucket Policy
# ------------------------------------------------------------------------------------------------
data "aws_iam_policy_document" "this" {
  statement {
    sid    = "AllowBedrock"
    effect = "Allow"
    principals {
      type        = "Service"
      identifiers = ["bedrock.amazonaws.com"]
    }
    actions = ["s3:*"]

    resources = [
      "${aws_s3_bucket.this.arn}/*",
    ]

    condition {
      test     = "StringEquals"
      variable = "aws:SourceAccount"
      values   = [data.aws_caller_identity.this.account_id]
    }

    condition {
      test     = "ArnLike"
      variable = "aws:SourceArn"
      values   = ["arn:aws:bedrock:${data.aws_region.this.region}:${data.aws_caller_identity.this.account_id}:*"]
    }
  }
  # ISO 27001:2022
  statement {
    sid    = "denyInsecureTransport"
    effect = "Deny"
    principals {
      identifiers = ["*"]
      type        = "*"
    }
    actions = ["s3:*"]

    resources = [
      "${aws_s3_bucket.this.arn}/*",
      aws_s3_bucket.this.arn,
    ]

    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["false"]
    }
  }
}
