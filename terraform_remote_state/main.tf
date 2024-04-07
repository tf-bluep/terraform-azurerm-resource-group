data "terraform_remote_state" "this" {
  backend = "remote"

  config = {
    organization = "InterGlobeAviation-Indigo"
    workspaces = {
      name = var.workspace
    }
  }
}
