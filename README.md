# MLOps-End-to-End-Movie-Review-Sentiment-Analysis-Project

End-To-End Movie-review-Sentiment-Analysis with MLflow &amp; DagsHub for experiment tracking, DVC for data versioning, model building &amp; and pushing to S3 storage, Terraform IaC, and CircleCI CI/CD, Kubernetes deployment for model serving, prometheus and grafana for alerting and monitoring creating a scalable, automated, and reproducible MLOps workflow.

Project Organization

------------

.
├── LICENSE
├── Makefile
├── README.md
├── requirements.txt
├── setup.py
├── tox.ini
│
├── data
│   ├── external/
│   ├── interim/
│   ├── processed/
│   └── raw/
│
├── docs/
│
├── models/
│   └── trained_models/           # logged or saved ML models (linked with MLflow)
│
├── notebooks/
│   ├── exp1.ipynb
│   ├── exp2_bow_vs_tfidf.py
│   └── exp3_lor_bow_hp.py
│
├── references/
│
├── reports/
│   └── figures/
│
├── src/
│   ├── __init__.py
│   │
│   ├── data/
│   │   └── make_dataset.py
│   │
│   ├── features/
│   │   └── build_features.py
│   │
│   ├── models/
│   │   ├── train_model.py
│   │   ├── predict_model.py
│   │   └── evaluation_utils.py
│   │
│   ├── visualization/
│   │   └── visualize.py
│   │
│   ├── connections/
│   │   ├── __init__.py
│   │   ├── config.json
│   │   ├── s3_connection.py
│   │   └── ssms_connection.py
│   │
│   └── pipelines/
│       ├── __init__.py
│       ├── data_pipeline.py
│       └── model_pipeline.py
│
├── flask_app/
│   ├── app.py
│   ├── templates/
│   │   └── index.html
│   ├── load_model_test.py
│   └── preprocessing_utility.py
│
├── terraform/
│   ├── main.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── backend.tf
│   │
│   ├── bootstrap/
│   │   └── bootstrap.tf
│   │
│   ├── envs/
│   │   ├── dev.tfvars
│   │   └── prod.tfvars
│   │
│   ├── modules/
│   │   ├── iam/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   │   │   └── ci_cd/
│   │   │       ├── main.tf
│   │   │       ├── variables.tf
│   │   │       └── outputs.tf
│   │   │
│   │   ├── ec2/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   └── outputs.tf
│   │   │
│   │   ├── ecr/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   └── outputs.tf
│   │   │
│   │   └── s3_bucket/
│   │       ├── main.tf
│   │       ├── variables.tf
│   │       └── outputs.tf
│
├── .circleci/
│   └── config.yml
│
├── Dockerfile
├── deployment.yaml
├── dvc.yaml
└── params.yaml
