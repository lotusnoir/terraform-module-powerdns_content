variable "pdns_records" {
  type = map(object({
    #zone = string >> key
    name    = string
    type    = optional(string, "A")
    ttl     = optional(number, 60)
    records = list(string)
  }))
  default = {}
}

variable "pdns_zones" {
  type = map(object({
    #name = string
    kind         = string
    account      = optional(string)
    nameservers  = optional(list(string))
    masters      = optional(list(string))
    soa_edit_api = optional(string)
  }))
  default = {}
}


variable "pdns_set_ptr" {
  type    = string
  default = false
}
