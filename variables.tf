variable "pdns_zones" {
  type = map(object({
    #name = string >> key map 1
    kind         = string
    account      = optional(string)
    nameservers  = optional(list(string))
    masters      = optional(list(string))
    soa_edit_api = optional(string, "DEFAULT")
  }))
  default = {}
}

variable "pdns_records" {
  type = map(map(object({
    #zone = string >> key map 1
    #name    = string >> key map 2
    type    = optional(string, "A")
    ttl     = optional(number, 60)
    records = list(string)
  })))
  default = {}
}


variable "pdns_set_ptr" {
  type    = string
  default = false
}
