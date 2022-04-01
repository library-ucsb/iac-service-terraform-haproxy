
# create one unit of `library-workspace`
module "library_workspace" {
    source                  = "app.terraform.io/library-ucsb-core/module-library-workspace/tfc"

    name                    = var.name
    github_repo_visibility  = var.visibility
    github_organization     = var.github_organization
    tfc_organization        = var.tfc_organization
    description             = var.description
    oauth_client_id         = var.oauth_client_id

    github_enforce_admins   = var.github_enforce_admins
}






output "github_repo_full_name" {
  value                     = module.library_workspace.github_repo_full_name
}

output "github_repo_ssh_clone_url" {
  value                     = module.library_workspace.github_repo_ssh_clone_url
}

output "github_repo_id" {
  value                     = module.library_workspace.github_repo_id
}

output "github_repo_branches" {
  value                     = module.library_workspace.github_repo_branches
}

output "tfc_workspace_id" {
  value                     = module.library_workspace.tfc_workspace_id
}

output "tfc_workspace_name" {
  value                     = module.library_workspace.tfc_workspace_name
}

output "tfc_workspace_working_directory" {
  value                     = module.library_workspace.tfc_workspace_working_directory
}