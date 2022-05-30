terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.3.2"
    }
  }
}

provider "github" {
  token = "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"
}

/*
resource "github_repository" "example" {
  name = "terraform-labs"
  visibility = "public"
} */