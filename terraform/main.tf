provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_droplet_snapshot" "main" {
  name_regex  = "^base*"
  region      = "lon1"
  most_recent = true
}

resource "digitalocean_droplet" "main" {
  image  = data.digitalocean_droplet_snapshot.main.id
  name   = "main"
  region = "lon1"
  size   = "s-1vcpu-1gb"
  ipv6   = true
}

resource "digitalocean_volume" "data" {
  region                   = "lon1"
  name                     = "data"
  size                     = 5
  initial_filesystem_type  = "ext4"
  initial_filesystem_label = "jenkins-home"
  description              = "data volume for main"
}

resource "digitalocean_volume_attachment" "data-main" {
  droplet_id = digitalocean_droplet.main.id
  volume_id  = digitalocean_volume.data.id
}


# Volume from snapshot

# data "digitalocean_volume_snapshot" "data" {
#   name = "data-test"
# }

# resource "digitalocean_volume" "data" {
#   region      = "lon1"
#   name        = "data"
#   size        = data.digitalocean_volume_snapshot.data.min_disk_size
#   snapshot_id = data.digitalocean_volume_snapshot.data.id
# }
