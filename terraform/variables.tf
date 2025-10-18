variable "iam_user_name" {
  description = "IAM username to create"
  type        = string
}

# =================================================================================

variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "block_public_acls" {
  description = "Disable or enable block public ACLs"
  type        = bool
  default     = true
}

variable "block_public_policy" {
  description = "Disable or enable block public policy"
  type        = bool
  default     = true
}

# =================================================================================

variable "iam_user_name_ci_cd" {
  description = "IAM username for CI/CD operations"
  type        = string
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
  type        = string
}

variable "eks_cluster_name" {
  description = "EKS cluster name"
  default     = "flask-app-cluster"
  type        = string
}

# =================================================================================

variable "ecr_repo_name" {
  description = "ECR repository name"
  type        = string
}

# =================================================================================

