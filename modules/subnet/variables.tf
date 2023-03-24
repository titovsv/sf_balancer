variable "subnet_name" {
  description = "Network name"
  type        = string
}

variable "v4_cidr_blocks" {
  description = "Subnet cidr blocks"
  type        = list(string)
}

variable "subnet_zone" {
  description = "Subnet zone"
  type        = string
}

variable "network_id" {
  description = "Network ID to create subnet"
  type        = string
}