variable "openshift_server" {
  type        = string
  description = "OpenShift API server URL"
}

variable "openshift_token" {
  type        = string
  description = "OpenShift service account token"
  sensitive   = true
}

variable "github_owner" {
  type        = string
  description = "GitHub organization or user that owns the runners"
}

variable "github_app_id" {
  type        = string
  description = "GitHub App ID for runner registration"
}

variable "github_app_install_id" {
  type        = string
  description = "GitHub App installation ID for the target organization"
}

variable "github_app_pem" {
  type        = string
  description = "GitHub App private key PEM"
  sensitive   = true
}

variable "runner_labels" {
  type        = list(string)
  description = "Labels to attach to self-hosted runners"
  default     = ["self-hosted", "linux", "x64", "openshift"]
}

variable "replicas" {
  type        = number
  description = "Number of runner pods"
  default     = 1
}
