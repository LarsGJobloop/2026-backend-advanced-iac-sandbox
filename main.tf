terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.10.2"
    }
  }
}

variable "gh_token" {
  sensitive = true
}

provider "github" {
  token = var.gh_token
}

resource "github_repository" "primary_repo" {
  name = "2026-backend-advanced-iac-sandbox"
  visibility = "private"
}

output "github_repo" {
  value = github_repository.primary_repo.html_url
}
