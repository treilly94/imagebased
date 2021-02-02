provider "cloudflare" {
  api_token = var.cloudflare_token
}

resource "cloudflare_record" "jenkins" {
  zone_id = "015a73c5122b5f3610eed490d5208827"
  name    = "jenkins"
  value   = digitalocean_droplet.main.ipv4_address
  type    = "A"
  ttl     = 3600
}
