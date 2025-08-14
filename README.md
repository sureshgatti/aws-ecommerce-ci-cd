# AWS E-commerce CI/CD with Terraform & Kubernetes

## Overview
This project demonstrates a complete CI/CD pipeline for an e-commerce web application deployed on AWS EKS using Terraform, Jenkins, Docker, and Kubernetes.

## Architecture
![Architecture](images/architecture.png)

## Steps
1. Provision AWS infra using Terraform.
2. Build app with Maven.
3. Create Docker image & push to AWS ECR.
4. Deploy to EKS via Kubernetes manifests.
5. Monitor using Prometheus + Grafana.

## Repository Structure
terraform/
jenkins-pipeline/
k8s-manifests/
monitoring/
README.md
