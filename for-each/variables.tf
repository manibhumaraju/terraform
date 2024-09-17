variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

variable "domain_name" {
  default = "manibhumaraju.online"
}

variable "zone_id" {
  default = "Z0960009J51UWVEUHO3A"
}