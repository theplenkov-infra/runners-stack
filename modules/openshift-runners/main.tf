resource "helm_release" "runners" {
  name       = "openshift-runners-${var.github_owner}"
  repository = "https://redhat-actions.github.io/openshift-actions-runner-chart"
  chart      = "actions-runner"
  namespace  = "theplenkov-dev"

  set {
    name  = "githubOwner"
    value = var.github_owner
  }

  set {
    name  = "githubAppId"
    value = var.github_app_id
    type  = "string"
  }

  set {
    name  = "githubAppInstallId"
    value = var.github_app_install_id
    type  = "string"
  }

  set {
    name  = "appSecretName"
    value = "github-app-${var.github_owner}"
    type  = "string"
  }

  set_sensitive {
    name  = "githubAppPem"
    value = var.github_app_pem
  }

  set_list {
    name  = "runnerLabels"
    value = var.runner_labels
  }

  set {
    name  = "replicas"
    value = var.replicas
  }

  set {
    name  = "memoryRequest"
    value = var.memory_request
  }

  set {
    name  = "memoryLimit"
    value = var.memory_limit
  }

  set {
    name  = "cpuRequest"
    value = var.cpu_request
  }

  set {
    name  = "cpuLimit"
    value = var.cpu_limit
  }

  wait = true
}
