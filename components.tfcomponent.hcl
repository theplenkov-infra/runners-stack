component "openshift_runners" {
  source = "./modules/openshift-runners"

  inputs = {
    github_owner          = var.github_owner
    github_app_id         = var.github_app_id
    github_app_install_id = var.github_app_install_id
    github_app_pem        = var.github_app_pem
    runner_labels         = var.runner_labels
    replicas              = var.replicas
    runner_image          = var.runner_image
    runner_tag            = var.runner_tag
  }

  providers = {
    helm = provider.helm.this
  }
}
