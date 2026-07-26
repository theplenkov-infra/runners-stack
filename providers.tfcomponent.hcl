required_providers {
  helm = {
    source  = "hashicorp/helm"
    version = "~> 2.16.0"
  }
}

provider "helm" "this" {
  config {
    kubernetes {
      host     = var.openshift_server
      token    = var.openshift_token
      insecure = true
    }
  }
}
