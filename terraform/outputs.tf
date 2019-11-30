output "instance_ipv4_addr" {
  value = digitalocean_droplet.main.ipv4_address
}

output "instance_ipv6_addr" {
  value = digitalocean_droplet.main.ipv6_address
}

output "instance_price_monthly" {
  value = digitalocean_droplet.main.price_monthly
}
