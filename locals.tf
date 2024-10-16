locals {
  flat_pdns_records = merge([
    for zone, records in var.pdns_records : {
      for name, value in records :
      "${name}_-_${zone}" => {
        zone    = zone
        name    = name
        type    = value.type
        ttl     = value.ttl
        records = value.records
      }
    }
  ]...)
}
