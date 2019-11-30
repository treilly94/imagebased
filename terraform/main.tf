provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_droplet_snapshot" "main" {
  name_regex  = "^base*"
  region      = "lon1"
  most_recent = true
}

resource "digitalocean_droplet" "main" {
  image    = data.digitalocean_droplet_snapshot.main.id
  name     = "main"
  region   = "lon1"
  size     = "s-1vcpu-1gb"
  ipv6     = true
  ssh_keys = ["b7:ed:94:c8:3f:b7:59:40:a6:92:cc:32:72:3b:53:53"]
}
