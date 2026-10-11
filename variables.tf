variable "data_catalog_tags" {
  description = <<EOT
Map of data_catalog_tags, attributes below
Required:
    - template
    - fields (block):
        - bool_value (optional)
        - double_value (optional)
        - enum_value (optional)
        - field_name (required)
        - string_value (optional)
        - timestamp_value (optional)
Optional:
    - column
    - deletion_policy
    - parent
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    template        = string
    column          = optional(string)
    deletion_policy = optional(string)
    parent          = optional(string)
    fields = list(object({
      bool_value      = optional(bool)
      double_value    = optional(number)
      enum_value      = optional(string)
      field_name      = string
      string_value    = optional(string)
      timestamp_value = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.data_catalog_tags : (
        length(v.fields) >= 1
      )
    ])
    error_message = "Each fields list must contain at least 1 items"
  }
}

