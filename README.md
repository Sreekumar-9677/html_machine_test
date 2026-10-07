# HTML Machine Test â€” Sign In Page

A simple sign-in page built with HTML, CSS and JavaScript. Containerized with Docker and deployed to AWS EC2 using GitHub Actions CI/CD pipeline.

---

## Tech Stack

- HTML, CSS, JavaScript
- Docker + Nginx
- GitHub Actions (CI/CD)
- AWS EC2

---

## Project Structure

```
html_machine_test/
â”œâ”€â”€ index.html
â”œâ”€â”€ Dockerfile
â”œâ”€â”€ .github/
â”‚   â””â”€â”€ workflows/
â”‚       â””â”€â”€ deploy.yml
â””â”€â”€ README.md
```

---

## Getting Started

### 1. Clone the repo

```bash
git clone https://github.com/Sreekumar-9677/html_machine_test.git
cd html_machine_test
```

### 2. Run locally with Docker

```bash
# Build image
docker build -t html-signin-app .

# Run container
docker run -d -p 8080:80 html-signin-app
```

Open browser â†’ `http://localhost:8080`

---

## Git Workflow

```bash
# Create feature branch from staging
git checkout staging
git checkout -b feature/your-feature

# Make changes, then commit
git add .
git commit -m "feat: your message"

# Push branch
git push origin feature/your-feature

# Create PR: feature â†’ staging â†’ main
```

---

## CI/CD Pipeline

The GitHub Actions workflow triggers automatically:

| Event | What happens |
|---|---|
| PR created to `main` | Docker image is built and tested |
| PR merged to `main` | Docker image pushed to Docker Hub + deployed to EC2 |

### Flow

```
staging branch
    â†“ (create PR)
main branch
    â†“ (GitHub Actions triggers)
Build Docker image
    â†“
Push to Docker Hub
    â†“
SSH into EC2
    â†“
Pull latest image â†’ Run container on port 80
```

---

## GitHub Secrets Setup

Go to â†’ **Settings â†’ Secrets â†’ Actions** and add:

| Secret | Description |
|---|---|
| `DOCKER_USERNAME` | Docker Hub username |
| `DOCKER_PASSWORD` | Docker Hub password |
| `EC2_HOST` | EC2 public IP address |
| `EC2_USER` | EC2 SSH username (e.g. `ubuntu`) |
| `EC2_SSH_KEY` | Contents of your `.pem` private key file |

---

## EC2 Setup (First time only)

SSH into your EC2 instance and install Docker:

```bash
ssh -i your-key.pem ubuntu@YOUR_EC2_IP

sudo apt update && sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
```

---

## Deploy Manually (if needed)

```bash
# Pull and run latest image on EC2
docker pull yourdockerhubuser/html-signin-app:latest

docker stop html-signin-app || true
docker rm html-signin-app || true

docker run -d \
  --name html-signin-app \
  --restart always \
  -p 80:80 \
  yourdockerhubuser/html-signin-app:latest
```

---

## Author

**Sreekumar J M** â€” Frontend Web Developer
