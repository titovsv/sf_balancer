terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }
  }
}

resource "yandex_lb_target_group" "terraform-tg" {
  name = "target-group"

  target {
    subnet_id = var.subnet_1_id
    address   = var.ya_instance_1_ip
  }

  target {
    subnet_id = var.subnet_2_id
    address   = var.ya_instance_2_ip
  }
}

resource "yandex_lb_network_load_balancer" "my-balancer" {
  name = "my-balancer"
  listener {
    name = "listener"
    port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }
  attached_target_group {
    target_group_id = yandex_lb_target_group.terraform-tg.id
    healthcheck {
      name = "healthcheck"
        http_options {
          port = 80
          path = "/"
        }
    }
  }
}