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
  source    = "./modules/iam/ci_cd"
  user_name = var.iam_user_name_ci_cd
}


module "ecr_repo" {
  source    = "./modules/ecr"
  repo_name = var.ecr_repo_name
}

