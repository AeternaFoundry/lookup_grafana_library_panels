data "grafana_library_panels" "library_panels_lookup" {
  for_each = var.library_panels_lookup

  org_id = each.value.org_id
}

