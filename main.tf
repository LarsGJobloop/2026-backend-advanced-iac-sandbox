terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.10.2"
    }
  }
}

provider "github" {
  # Configuration options
}

resource "github_repository" "primary_repo" {
  name = "2026-backend-advanced-iac-sandbox"
  visibility = "private"
}
