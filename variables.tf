variable "bucket" {
  description = "The name of the S3 bucket to be created."
  type        = string
}

variable "embedding_data_delivery_enabled" {
  description = "Indicates whether embedding data delivery is enabled."
  type        = bool
  default     = false
}

variable "image_data_delivery_enabled" {
  description = "Indicates whether image data delivery is enabled."
  type        = bool
  default     = false
}

variable "text_data_delivery_enabled" {
  description = "Indicates whether text data delivery is enabled."
  type        = bool
  default     = false
}

variable "key_prefix" {
  description = "The key prefix for logging configuration in S3."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to assign to the customization job and custom model."
  type        = map(string)
  default     = {}
}
