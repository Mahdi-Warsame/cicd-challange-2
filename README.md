
Terraform CI with GitHub Actions 🚀

📌 Project Overview

This project demonstrates how to automate Terraform code quality checks using GitHub Actions.

The goal is to catch formatting and configuration errors automatically whenever relevant Terraform files are pushed to GitHub or submitted through a pull request.

🎯 Objectives

* Automate Terraform formatting checks.
* Validate Terraform configurations.
* Configure CI/CD workflow triggers.
* Detect issues early without manually running every check.

🛠️ Tech Stack

* Terraform — Infrastructure as Code (IaC).
* GitHub Actions — CI/CD automation.
* Git & GitHub — Version control and repository hosting.

📂 Project Structure

terraform-cicd-challenge/
├── main.tf
├── .gitignore
└── .github/
    └── workflows/
        └── terraform-lint.yml

⚙️ Workflow

The GitHub Actions workflow performs the following steps:

1. Checkout repository — Retrieves the source code.
2. Setup Terraform — Installs the configured Terraform version.
3. Format check — Checks formatting using terraform fmt -check -recursive.
4. Initialize Terraform — Runs terraform init -backend=false.
5. Validate configuration — Runs terraform validate.

Workflow Triggers

Trigger	Purpose
push	Runs checks when matching files are pushed.
pull_request	Checks proposed changes involving matching files.
workflow_dispatch	Allows manual workflow execution.

Path filters ensure the automated checks run when relevant Terraform files or the workflow configuration change.

🧪 Run Checks Locally

Install Terraform, then run these commands from your Terraform project directory:

# Check Terraform formatting
terraform fmt -check -recursive
# Initialize without initializing a remote backend
terraform init -backend=false
# Validate the configuration
terraform validate

To automatically correct formatting issues:

terraform fmt -recursive

📚 Key Learnings

* Automating Terraform quality checks with GitHub Actions.
* Understanding workflow triggers and path filters.
* Using Terraform formatting and validation commands.
* Understanding how command exit codes determine workflow success or failure.
* Catching configuration issues early in the development lifecycle.

🚧 Future Improvements

* Integrate TFLint for additional Terraform linting.
* Add security scanning with Checkov.
* Introduce Terraform plan checks.
* Configure branch protection and required status checks.

⚠️ Scope

This project focuses on CI checks. It does not deploy infrastructure or create cloud resources.

👨‍💻 DevOps Learning Journey

Part of my hands-on DevOps challenges, focused on learning CI/CD automation and Infrastructure as Code.

Build • Learn • Automate 🚀

Before committing: Make sure the directory and filenames in the README match your actual repository structure.

Save this content as README.md in the repository root, then commit and push it to GitHub.