#New file
terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.26.0"
    }
  }
}

provider "github" {
  # Configuration options
  #token = "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"
  token = "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"
}

resource "github_repository" "example" {
  name       = var.git-repo[count.index]
  visibility = "public"
  count      = 2
}


output "repos" {
  value = github_repository.example[*].name
}


