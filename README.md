# 🚀 Django Todo App Deployment Using Docker Swarm on AWS EC2

This project demonstrates end-to-end containerized deployment of a Django Todo application using **Docker, Docker Compose, Docker Swarm**, and **AWS EC2**. The Docker image is built locally, pushed to Docker Hub, and deployed on a Docker Swarm cluster with replicas for high availability.

---

## 🛠 Tech Stack

- AWS EC2 (Linux)
- Docker Engine
- Docker Compose
- Docker Swarm
- Python 3.9
- Django Framework
- Docker Hub

---

## 📌 Project Workflow Architecture

```
GitHub Repository
       ↓
Dockerfile Build
       ↓
Docker Image Push (Docker Hub)
       ↓
AWS EC2 Swarm Manager
       ↓
Docker Swarm Cluster (1 Manager + 2 Workers)
       ↓
Docker Stack Deployment
       ↓
Live Django Application
```

---

## ⚙️ EC2 Server Automation (User Data Script)

During EC2 instance launch, the following tasks were automated using User Data:

- Docker installation
- Docker Compose installation
- Docker service enable
- Docker user permission configuration (sudo-less access)

---

## 🐳 Docker Swarm Cluster Setup

### Initialize Swarm Manager

```bash
docker swarm init
```

### Add Worker Nodes

```bash
docker swarm join --token <worker-token> <manager-ip>:2377
```

### Verify Nodes

```bash
docker node ls
```

---

## 🐳 Docker Image Build and Push

### Build Docker Image

```bash
docker build -t your-dockerhub-username/django-todo-app .
```

### Push Image to Docker Hub

```bash
docker push your-dockerhub-username/django-todo-app
```

---

## 📦 Docker Compose Configuration

Docker Compose file includes:

- Django application service
- Replicas for scalability
- Port mapping (8000)
- Docker Hub image reference
- Restart policy

---

## 🚀 Docker Stack Deployment

Deploy application using Docker Swarm Stack:

```bash
docker stack deploy -c docker-compose.yaml django-todo-stack
```

---

## 🔍 Deployment Verification

### Check Services

```bash
docker service ls
```

### Check Running Containers

```bash
docker ps
```

### Check Stack

```bash
docker stack ls
```

---

## Application Access

Open browser and access:

```
http://:8000
```

---

## Key Features

- Fully containerized Django application
- Docker Swarm cluster (Manager + Workers)
- High availability using replicas
- Automated server setup
- Docker Hub image registry integration
- Production-style deployment workflow

---

## Skills Demonstrated

- Dockerfile creation and optimization
- Docker Compose orchestration
- Docker Swarm cluster management
- AWS EC2 cloud deployment
- Container image publishing
- Infrastructure automation
- Scalable application deployment

---

## Future Enhancements

- Add Nginx reverse proxy
- Configure SSL with HTTPS
- Integrate Jenkins CI/CD pipeline
- Add Prometheus and Grafana monitoring
- Use environment variables for secrets

---
## Author

**Abhishek Kumar Sharma**  
DevOps and Cloud Engineer Aspirant  
GitHub: https://github.com/abhisharma13019/Django-todo-app
DockerHub: https://hub.docker.com/repositories/abhisharma16161 

---

 ## If you like this project, give it a star and feel free to fork it!

