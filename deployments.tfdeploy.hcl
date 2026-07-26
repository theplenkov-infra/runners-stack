store "varset" "shared" {
  name     = "runners-stack-shared"
  category = "terraform"
}

deployment "ai" {
  inputs = {
    openshift_server      = store.varset.shared.stable.OPENSHIFT_SERVER
    openshift_token       = store.varset.shared.stable.OPENSHIFT_TOKEN
    github_app_id         = store.varset.shared.stable.GITHUB_APP_ID
    github_app_pem        = store.varset.shared.stable.GITHUB_APP_PEM
    github_owner          = "theplenkov-ai"
    github_app_install_id = "149123614"
    runner_labels         = ["self-hosted", "linux", "x64", "openshift", "ai"]
    replicas              = 2
  }
}
