output "pet_name" {
  type        = string
  description = "Generated random pet name"
  value       = component.demo.name
}
