terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

module "nginx" {
  source         = "../../modules/nginx"
  container_name = "nginx-stage"
  external_port  = 8084
}
#aaaa
