data "elasticstack_elasticsearch_ingest_processor_dissect" "elasticsearch_ingest_processor_dissect_lookup" {
  for_each = var.elasticsearch_ingest_processor_dissect_lookup

  field            = each.value.field
  pattern          = each.value.pattern
  append_separator = each.value.append_separator
  description      = each.value.description
  if               = each.value.if
  ignore_failure   = each.value.ignore_failure
  ignore_missing   = each.value.ignore_missing
  on_failure       = each.value.on_failure
  tag              = each.value.tag
}

