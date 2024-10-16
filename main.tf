resource "powerdns_zone" "this" {
  for_each = var.pdns_zones != null ? var.pdns_zones : null

  name         = each.key
  kind         = each.value.kind
  account      = each.value.account
  nameservers  = each.value.nameservers
  masters      = each.value.masters
  soa_edit_api = each.value.soa_edit_api
}

resource "powerdns_record" "this" {
  for_each = var.pdns_records != null ? var.pdns_records : null

  zone    = each.key
  name    = each.value.name
  type    = each.value.type
  ttl     = each.value.ttl
  records = each.value.records
  set_ptr = var.pdns_set_ptr
}
