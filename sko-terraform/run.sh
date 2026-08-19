#!/bin/bash
set -e

ENV=$1
if [ -z "$ENV" ]; then
  echo "Usage: ./run.sh <dev|prod>"
  exit 1
fi

cd $ENV
terraform workspace select $ENV || terraform workspace new $ENV
terraform init -backend-config=../backend.tf
terraform validate
terraform plan -var-file=$ENV.tfvars -out=tfplan
terraform apply -auto-approve tfplan
