removed {
  from   = component.demo
  source = "./modules/demo"

  providers = {
    random = provider.random.this
  }
}

component "openshift_runners" {
  source = "./modules/openshift-runners"

  inputs = {
    github_owner          = var.github_owner
    github_app_id         = var.github_app_id
    github_app_install_id = var.github_app_install_id
    github_app_pem        = var.github_app_pem
    runner_labels         = var.runner_labels
    replicas              = var.replicas
  }

  providers = {
    helm = provider.helm.this
  }
}
