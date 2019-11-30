variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_droplet" "main" {
  image    = "ubuntu-18-04-x64"
  name     = "main"
  region   = "lon1"
  size     = "s-1vcpu-1gb"
  ipv6     = true
  ssh_keys = ["b7:ed:94:c8:3f:b7:59:40:a6:92:cc:32:72:3b:53:53"]
}

output "instance_ipv4_addr" {
  value = digitalocean_droplet.main.ipv4_address
}

output "instance_ipv6_addr" {
  value = digitalocean_droplet.main.ipv6_address
}

output "instance_price_monthly" {
  value = digitalocean_droplet.main.price_monthly
}
