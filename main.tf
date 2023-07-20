terraform {
  required_providers {
    tfe = {
      version = "~> 0.46.0"
    }
  }
}

provider "tfe" {}

resource "tfe_workspace" "networking" {
  name          = "networking"
  organization  = var.tfc_organization
  project_id    = var.tfc_project_id

  vcs_repo {
    identifier = var.repo_identifier
    oauth_token_id = var.oauth_token_id
  }

  working_directory = "networking"
  queue_all_runs = false
}

resource "tfe_workspace" "hcp_clusters" {
  name          = "hcp-clusters"
  organization  = var.tfc_organization
  project_id    = var.tfc_project_id

  vcs_repo {
    identifier = var.repo_identifier
    oauth_token_id = var.oauth_token_id
  }

  working_directory = "hcp-clusters"
  queue_all_runs = false
}

resource "tfe_workspace" "nomad_cluster" {
  name          = "nomad-cluster"
  organization  = var.tfc_organization
  project_id    = var.tfc_project_id

  vcs_repo {
    identifier = var.repo_identifier
    oauth_token_id = var.oauth_token_id
  }

  working_directory = "nomad-cluster"
  queue_all_runs = false
}

resource "tfe_workspace" "nomad_nodes" {
  name          = "nomad-nodes"
  organization  = var.tfc_organization
  project_id    = var.tfc_project_id

  vcs_repo {
    identifier = var.repo_identifier
    oauth_token_id = var.oauth_token_id
  }

  working_directory = "nomad-nodes"
  queue_all_runs = false
}