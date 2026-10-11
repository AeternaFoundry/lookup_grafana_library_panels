output "library_panels_lookup_id" {
  description = "Map of id values across all library_panels_lookup, keyed the same as var.library_panels_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_library_panels.library_panels_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "library_panels_lookup_org_id" {
  description = "Map of org_id values across all library_panels_lookup, keyed the same as var.library_panels_lookup except keys with no org_id are omitted"
  value       = { for k, v in data.grafana_library_panels.library_panels_lookup : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "library_panels_lookup_panels" {
  description = "Map of panels values across all library_panels_lookup, keyed the same as var.library_panels_lookup except keys with no panels are omitted"
  value       = { for k, v in data.grafana_library_panels.library_panels_lookup : k => v.panels if v.panels != null && length(v.panels) > 0 }
}

