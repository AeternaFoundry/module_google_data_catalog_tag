resource "google_data_catalog_tag" "data_catalog_tags" {
  for_each = var.data_catalog_tags

  template        = each.value.template
  column          = each.value.column
  deletion_policy = each.value.deletion_policy
  parent          = each.value.parent

  dynamic "fields" {
    for_each = each.value.fields
    content {
      bool_value      = fields.value.bool_value
      double_value    = fields.value.double_value
      enum_value      = fields.value.enum_value
      field_name      = fields.value.field_name
      string_value    = fields.value.string_value
      timestamp_value = fields.value.timestamp_value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

