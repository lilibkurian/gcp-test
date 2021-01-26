variable "use_public_ip" {
  description = "Boolean for using Public IP address."
  type = bool
  default = true
}

variable "access_config" {
  description = "Access configurations, i.e. IPs via which the VM instance can be accessed via the Internet."
  type = list(object({
    nat_ip       = string
    network_tier = string
  }))
  default = []
}

