module "network" {
    source = "./network"
    region = var.region
    vpc_name = var.vpc_name
   
    subnet_1_name = var.subnet_1_name
    subnet_2_name = var.subnet_2_name
    subnet_1_cidr = var.subnet_1_cidr
    subnet_2_cidr = var.subnet_2_cidr
}