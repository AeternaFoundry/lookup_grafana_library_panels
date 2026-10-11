variable "library_panels_lookup" {
  description = <<EOT
Map of library_panels_lookup, attributes below
Optional:
    - org_id
EOT

  type = map(object({
    org_id = optional(string)
  }))
}

