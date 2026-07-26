output "release_name" {
  type        = string
  description = "Helm release name for the deployed runners"
  value       = component.openshift_runners.release_name
}

output "release_status" {
  type        = string
  description = "Helm release status"
  value       = component.openshift_runners.release_status
}
