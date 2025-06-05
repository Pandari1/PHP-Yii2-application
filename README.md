# PHP-Yii2-application

Overview
This project demonstrates deployment of a Yii2 PHP web application using Docker Swarm on an AWS EC2 instance, with Jenkins CI/CD pipeline and Docker Hub for container image registry. NGINX is configured as a reverse proxy on the EC2 instance to forward HTTP traffic to the Yii2 container.

# 🚀 Yii2 Application Deployment with Docker Swarm, NGINX, and Terraform on AWS

This project demonstrates a minimal Yii2 PHP application deployed using Docker Swarm and NGINX as a reverse proxy on an AWS EC2 instance. Jenkins is used for CI/CD and Terraform provisions the infrastructure.

---
## 📦 Stack Components

| Component      | Description                                             |
|----------------|---------------------------------------------------------|
| Yii2 App       | PHP-based MVC application containerized in Docker       |
| Docker Swarm   | Orchestration of Yii2 container                         |
| NGINX          | Reverse proxy on the EC2 host forwarding to Yii2        |
| Terraform      | Provisions the EC2 infrastructure on AWS                |
| Jenkins        | Handles build, Docker image push, and deployment        |
| Docker Hub     | Stores Yii2 Docker image                                |

---

## 🌐 Access

- **Application**: `http://http://13.60.76.230/
