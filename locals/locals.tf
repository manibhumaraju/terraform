locals {
    domain_name = "manibhumaraju.online"  
    zone_id = "Z0960009J51UWVEUHO3A"
    instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"

    # count.index will not work in locals
}