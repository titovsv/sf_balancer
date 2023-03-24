terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }
  }
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "<BUCKET>"
    region     = "<REGION>"
    key        = "<KEY>"
    access_key = "<ACCESS_KEY>"
    secret_key = "<SECRET_KEY>"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}
provider "yandex" {
  folder_id = "<FOLDER_ID>"
  zone      = "ru-central1-a"
}

resource "yandex_vpc_network" "my-network" {
  name = "my-network"
}

module "ya_subnet_1" {
  source         = "./modules/subnet"
  network_id     = yandex_vpc_network.my-network.id
  v4_cidr_blocks = ["192.168.10.0/24"]
  subnet_name    = "subnet1"
  subnet_zone    = "ru-central1-a"
}

module "ya_subnet_2" {
  source         = "./modules/subnet"
  network_id     = yandex_vpc_network.my-network.id
  v4_cidr_blocks = ["192.168.11.0/24"]
  subnet_name    = "subnet2"
  subnet_zone    = "ru-central1-b"
}


module "ya_instance_1" {
  source                = "./modules/instance"
  instance_family_image = "lemp"
  vpc_subnet_id         = module.ya_subnet_1.subnet_ids.id
  instance_zone         = "ru-central1-a"
}

module "ya_instance_2" {
  source                = "./modules/instance"
  instance_family_image = "lamp"
  vpc_subnet_id         = module.ya_subnet_2.subnet_ids.id
  instance_zone         = "ru-central1-b"
}


module "ya_balancer" {
  source           = "./modules/balancer"
  subnet_1_id      = module.ya_subnet_1.subnet_ids.id
  subnet_2_id      = module.ya_subnet_2.subnet_ids.id
  ya_instance_1_ip = module.ya_instance_1.internal_ip_address_vm
  ya_instance_2_ip = module.ya_instance_2.internal_ip_address_vm
}
