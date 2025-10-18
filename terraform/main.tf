module "iam_user" {
  source    = "./modules/iam"
  user_name = var.iam_user_name
}


module "s3_bucket" {
  source             = "./modules/s3_bucket"
  bucket_name        = var.s3_bucket_name
  block_public_acls  = var.block_public_acls
  block_public_policy = var.block_public_policy
}


module "iam_user_ci_cd" {
  source           = "./modules/iam/ci_cd"
  user_name        = var.iam_user_name_ci_cd
  region           = var.region
  eks_cluster_name = var.eks_cluster_name
}


module "ecr_repo" {
  source    = "./modules/ecr"
  repo_name = var.ecr_repo_name
}


data "aws_vpc" "default" {
  default = true
}

module "ec2_prometheus_instance" {
  source        = "./modules/ec2/prometheus"
  vpc_id        = data.aws_vpc.default.id
  instance_name = var.prometheus_ec2_instance_name
  ami_id        = var.prometheus_ec2_ami
  instance_type = var.prometheus_ec2_instance_type
  key_name      = var.prometheus_ec2_key_name
  disk_size     = var.prometheus_ec2_disk_size
}


module "ec2_grafana_instance" {
  source        = "./modules/ec2/grafana"
  vpc_id        = data.aws_vpc.default.id
  instance_name = var.grafana_ec2_instance_name
  ami_id        = var.grafana_ec2_ami
  instance_type = var.grafana_ec2_instance_type
  key_name      = var.grafana_ec2_key_name
  disk_size     = var.grafana_ec2_disk_size
}

