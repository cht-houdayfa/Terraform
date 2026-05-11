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
  container_name = "nginx-dev"
  external_port  = 8083
}

# trigger dev pipeline
