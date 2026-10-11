variable "elasticsearch_ingest_processor_dissect_lookup" {
  description = <<EOT
Map of elasticsearch_ingest_processor_dissect_lookup, attributes below
Required:
    - field
    - pattern
Optional:
    - append_separator
    - description
    - if
    - ignore_failure
    - ignore_missing
    - on_failure
    - tag
EOT

  type = map(object({
    field            = string
    pattern          = string
    append_separator = optional(string)
    description      = optional(string)
    if               = optional(string)
    ignore_failure   = optional(bool)
    ignore_missing   = optional(bool)
    on_failure       = optional(list(string))
    tag              = optional(string)
  }))
}

