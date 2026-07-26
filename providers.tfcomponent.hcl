required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.0"
  }

  helm = {
    source  = "hashicorp/helm"
    version = "~> 2.16.0"
  }
}

provider "random" "this" {
  config {}
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
