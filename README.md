# HTML Machine Test

A simple sign-in page built with HTML, CSS and JavaScript. Containerized with Docker and deployed to AWS EC2 using GitHub Actions CI/CD pipeline.

---

## Tech Stack


- Docker + Nginx
- GitHub Actions (CI/CD)
- AWS EC2

---

## Project Structure

```
html_machine_test/
 index.html
 Dockerfile
 .github/
workflows/
 deploy.yml





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

Open browser`http://localhost:8080`

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

