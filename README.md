# HTML Machine Test — Sign In Page

A beautiful demo **Sign In** page built with pure HTML, CSS, and JavaScript. Includes full **Docker** support and **GitHub Actions CI/CD** pipeline.

---

## 📁 Project Structure

```
html_machine_test/
├── index.html                        # Sign-in page
├── Dockerfile                        # Docker build config
├── .github/
│   └── workflows/
│       └── deploy.yml                # GitHub Actions CI/CD
└── README.md
```

---

## 🚀 Run Locally with Docker

```bash
# Build the image
docker build -t html-signin-app .

# Run on port 8080
docker run -d -p 8080:80 html-signin-app

# Open in browser
# http://localhost:8080
```

---

## 🔄 CI/CD Flow

```
Developer → feature branch → PR to main → Merge
                                             ↓
                              GitHub Actions triggers
                                             ↓
                              Docker image built & tagged
                                             ↓
                              Pushed to Docker Hub (latest + SHA tag)
```

---

## ⚙️ GitHub Secrets Required

Go to your GitHub repo → **Settings → Secrets and variables → Actions → New repository secret**

| Secret Name       | Value                    |
|-------------------|--------------------------|
| `DOCKER_USERNAME` | Your Docker Hub username |
| `DOCKER_PASSWORD` | Your Docker Hub password |

---

## 🧑‍💻 Git Workflow (Step-by-step)

```bash
# 1. Initialize repo
git init
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git

# 2. Create feature branch
git checkout -b feature/signin-page

# 3. Stage and commit
git add .
git commit -m "feat: add sign-in page with Docker and CI/CD"

# 4. Push branch
git push origin feature/signin-page

# 5. Create PR on GitHub (main ← feature/signin-page)
# 6. Merge PR → GitHub Actions auto-triggers → Docker image deployed!
```
