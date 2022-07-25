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
  token = var.gittocken
  #token = file("../git-pass.txt")
}

resource "github_repository" "example" {
  name       = var.git-repo[count.index]
  visibility = "public"
  count      = 2
}


output "repos" {
  value = github_repository.example[*].name
}


