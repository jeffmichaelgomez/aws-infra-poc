#!/bin/bash
set -e

for env in dev prod; do
  echo "Running terraform fmt in envs/$env..."
  terraform fmt -recursive envs/$env
done

echo "Terraform fmt completed for all environments."