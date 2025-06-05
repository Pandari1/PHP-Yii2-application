# 🚀 Yii2 Application Deployment with Docker Swarm, NGINX, and Terraform on AWS
Overview
This project demonstrates deployment of a Yii2 PHP web application using Docker Swarm on an AWS EC2 instance, with Jenkins CI/CD pipeline and Docker Hub for container image registry. NGINX is configured as a reverse proxy on the EC2 instance to forward HTTP traffic to the Yii2 container.

Architecture
+------------------+        +-------------------+       +---------------------+
| Developer        |  --->  | Jenkins CI/CD     |  ---> | Docker Hub Registry  |
+------------------+        +-------------------+       +---------------------+
                                                           |
                                                           v
                                             +-------------------------------+
                                             | AWS EC2 (Docker Swarm Node)    |
                                             | +---------------------------+ |
                                             | | Docker Swarm               | |
                                             | | - yii2_service container  | |
                                             | | NGINX Reverse Proxy       | |
                                             | +---------------------------+ |
                                             +-------------------------------+

User Browser --> HTTP (Port 80) --> NGINX (Reverse Proxy) --> Yii2 App Container (Port 9090)

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

- **Application**: http://13.60.76.230/
