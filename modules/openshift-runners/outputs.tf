output "release_name" {
  value = helm_release.runners.name
}

output "release_status" {
  value = helm_release.runners.status
}
