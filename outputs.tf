output "data_catalog_tags_id" {
  description = "Map of id values across all data_catalog_tags, keyed the same as var.data_catalog_tags except keys with no id are omitted"
  value       = { for k, v in google_data_catalog_tag.data_catalog_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_catalog_tags_column" {
  description = "Map of column values across all data_catalog_tags, keyed the same as var.data_catalog_tags except keys with no column are omitted"
  value       = { for k, v in google_data_catalog_tag.data_catalog_tags : k => v.column if v.column != null && length(v.column) > 0 }
}
output "data_catalog_tags_deletion_policy" {
  description = "Map of deletion_policy values across all data_catalog_tags, keyed the same as var.data_catalog_tags except keys with no deletion_policy are omitted"
  value       = { for k, v in google_data_catalog_tag.data_catalog_tags : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "data_catalog_tags_fields" {
  description = "Map of fields values across all data_catalog_tags, keyed the same as var.data_catalog_tags except keys with no fields are omitted"
  value       = { for k, v in google_data_catalog_tag.data_catalog_tags : k => v.fields if v.fields != null && length(v.fields) > 0 }
}
output "data_catalog_tags_name" {
  description = "Map of name values across all data_catalog_tags, keyed the same as var.data_catalog_tags except keys with no name are omitted"
  value       = { for k, v in google_data_catalog_tag.data_catalog_tags : k => v.name if v.name != null && length(v.name) > 0 }
}
output "data_catalog_tags_parent" {
  description = "Map of parent values across all data_catalog_tags, keyed the same as var.data_catalog_tags except keys with no parent are omitted"
  value       = { for k, v in google_data_catalog_tag.data_catalog_tags : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "data_catalog_tags_template" {
  description = "Map of template values across all data_catalog_tags, keyed the same as var.data_catalog_tags except keys with no template are omitted"
  value       = { for k, v in google_data_catalog_tag.data_catalog_tags : k => v.template if v.template != null && length(v.template) > 0 }
}
output "data_catalog_tags_template_displayname" {
  description = "Map of template_displayname values across all data_catalog_tags, keyed the same as var.data_catalog_tags except keys with no template_displayname are omitted"
  value       = { for k, v in google_data_catalog_tag.data_catalog_tags : k => v.template_displayname if v.template_displayname != null && length(v.template_displayname) > 0 }
}

