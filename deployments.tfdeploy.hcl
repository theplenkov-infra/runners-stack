store "varset" "shared" {
  name     = "runners-stack-shared"
  category = "terraform"
}

deployment "ai" {
  inputs = {
    openshift_server    = store.varset.shared.OPENSHIFT_SERVER
    openshift_token     = store.varset.shared.OPENSHIFT_TOKEN
    github_app_id       = store.varset.shared.GITHUB_APP_ID
    github_app_pem      = store.varset.shared.GITHUB_APP_PEM
    github_owner        = "theplenkov-ai"
    github_app_install_id = "149123614"
    runner_labels       = ["self-hosted", "linux", "x64", "openshift", "ai"]
    replicas            = 2
  }
}

deployment "sandbox" {
  inputs = {
    openshift_server    = store.varset.shared.OPENSHIFT_SERVER
    openshift_token     = store.varset.shared.OPENSHIFT_TOKEN
    github_app_id       = store.varset.shared.GITHUB_APP_ID
    github_app_pem      = store.varset.shared.GITHUB_APP_PEM
    github_owner        = "theplenkov-sandbox"
    github_app_install_id = "143802176"
    runner_labels       = ["self-hosted", "linux", "x64", "openshift", "sandbox"]
    replicas            = 1
  }
}
