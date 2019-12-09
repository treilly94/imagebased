provider "cloudflare" {
  api_token = var.cloudflare_api_token
}

resource "cloudflare_record" "jenkins" {
  zone_id = var.cloudflare_zone_token
  name    = "jenkins"
  value   = digitalocean_droplet.main.ipv4_address
  type    = "A"
  ttl     = 3600
}
