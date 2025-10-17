import os
from pathlib import Path

list_of_files = [
    ".circleci/config.yml",
    "terraform/main.tf",
    "terraform/providers.tf",
    "terraform/variables.tf",
    "terraform/outputs.tf",
    "terraform/backend.tf",
    "terraform/bootstrap/bootstrap.tf",
    "terraform/envs/dev.tfvars",
    "terraform/envs/prod.tfvars",
    "terraform/modules/iam/main.tf",
    "terraform/modules/iam/variables.tf",
    "terraform/modules/iam/outputs.tf",
    "terraform/modules/iam/ci_cd/main.tf",
    "terraform/modules/iam/ci_cd/variables.tf",
    "terraform/modules/iam/ci_cd/outputs.tf",
    "terraform/modules/ec2/main.tf",
    "terraform/modules/ec2/variables.tf",
    "terraform/modules/ec2/outputs.tf",
    "terraform/modules/ecr/main.tf",
    "terraform/modules/ecr/variables.tf",
    "terraform/modules/ecr/outputs.tf",
    "terraform/modules/s3_bucket/main.tf",
    "terraform/modules/s3_bucket/variables.tf",
    "terraform/modules/s3_bucket/outputs.tf",
    "src/connections/__init__.py",
    "src/connections/config.json",
    "src/connections/s3_connection.py",
    "src/connections/ssms_connection.py",
    "src/logger/__init__.py",
    "src/data/data_ingestion.py",
    "src/data/data_preprocessing.py",
    "src/features/feature_engineering.py",
    "src/model/model_building.py",
    "src/model/model_evaluation.py",
    "src/model/register_model.py",
    "flask_app/app.py",
    "flask_app/templates/index.html",
    "flask_app/load_model_test.py",
    "flask_app/preprocessing_utility.py",
    "flask_app/requirements.txt",
    "notebooks/exp1.ipynb",
    "notebooks/exp2_bow_vs_tfidf.py",
    "notebooks/exp3_lor_bow_hp.py",
    "requirements.txt",
    "Dockerfile",
    "deployment.yaml",
    "dvc.yaml",
    "params.yaml",
]


for filepath in list_of_files:
    filepath = Path(filepath)
    filedir, filename = os.path.split(filepath)
    if filedir != "":
        os.makedirs(filedir, exist_ok=True)
    if (not os.path.exists(filepath)) or (os.path.getsize(filepath) == 0):
        with open(filepath, "w") as f:
            pass
    else:
        print(f"file is already present at: {filepath}")