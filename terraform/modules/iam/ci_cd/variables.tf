
variable "user_name" {
  description = "IAM user name"
  type        = string
}

variable "eks_cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "region" {
  default = "us-east-1"
}
