variable "github_owner" {
  type = string
}

variable "github_app_id" {
  type = string
}

variable "github_app_install_id" {
  type = string
}

variable "github_app_pem" {
  type      = string
  sensitive = true
}

variable "runner_labels" {
  type    = list(string)
  default = ["self-hosted", "linux", "x64", "openshift"]
}

variable "replicas" {
  type    = number
  default = 1
}

variable "memory_request" {
  type    = string
  default = "1Gi"
}

variable "memory_limit" {
  type    = string
  default = "2Gi"
}

variable "cpu_request" {
  type    = string
  default = "250m"
}

variable "cpu_limit" {
  type    = string
  default = "500m"
}

variable "runner_image" {
  type    = string
  default = "quay.io/redhat-github-actions/runner"
}

variable "runner_tag" {
  type    = string
  default = "v1"
}
