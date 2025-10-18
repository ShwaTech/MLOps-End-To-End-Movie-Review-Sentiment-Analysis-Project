iam_user_name = "dev-shwa-mlops-movie-review"


s3_bucket_name      = "dev-shwa-mlops-movie-review"
block_public_acls   = true
block_public_policy = true


iam_user_name_ci_cd = "shwa-ci-cd-user"


ecr_repo_name       = "dev-shwa-mlops-movie-review"


prometheus_ec2_instance_name   = "dev-shwa-prometheus-server"
prometheus_ec2_ami             = "ami-0360c520857e3138f"    # Ubuntu 24.04 LTS (us-east-1)
prometheus_ec2_instance_type   = "t2.micro"
prometheus_ec2_key_name        = "shwa-prometheus"
prometheus_ec2_disk_size       = 20


grafana_ec2_instance_name   = "dev-shwa-grafana-server"
grafana_ec2_ami             = "ami-0360c520857e3138f"    # Ubuntu 24.04 LTS (us-east-1)
grafana_ec2_instance_type   = "t2.micro"
grafana_ec2_key_name        = "shwa-grafana"
grafana_ec2_disk_size       = 20
