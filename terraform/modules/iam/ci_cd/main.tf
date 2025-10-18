
resource "aws_iam_user" "this" {
  name = var.user_name
  force_destroy = true
}

# Attach policies (can add/remove as needed)
resource "aws_iam_user_policy_attachment" "ec2_access" {
  user       = aws_iam_user.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_user_policy_attachment" "ecs_access" {
  user       = aws_iam_user.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
}

resource "aws_iam_user_policy_attachment" "ecr_access" {
  user       = aws_iam_user.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
}

resource "aws_iam_user_policy_attachment" "eks_cluster_access" {
  user       = aws_iam_user.this.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

data "aws_caller_identity" "current" {}

# Define a custom IAM policy allowing eks:DescribeCluster on your specific cluster
resource "aws_iam_policy" "eks_describe_cluster_policy" {
  name        = "AllowDescribeFlaskAppCluster"
  description = "Allows DescribeCluster for the flask-app-cluster"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "eks:DescribeCluster",
          "eks:ListClusters",
          "eks:AccessKubernetesApi"
        ]
        Resource = "arn:aws:eks:${var.region}:${data.aws_caller_identity.current.account_id}:cluster/${var.eks_cluster_name}"
      }
    ]
  })
}

# Attach that policy to your CI/CD IAM user
resource "aws_iam_user_policy_attachment" "describe_cluster_attach" {
  user       = aws_iam_user.this.name
  policy_arn = aws_iam_policy.eks_describe_cluster_policy.arn
}

# Access Key
resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}
