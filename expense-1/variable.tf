variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "description"
}

variable "domain_name" {
  default = "manibhumaraju.online"
}

variable "zone_id" {
  default = "Z0960009J51UWVEUHO3A"
}