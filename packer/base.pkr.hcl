variable "do_token" {
  type      = string
  default   = env("TF_VAR_do_token")
  sensitive = true
}

source "digitalocean" "main" {
  api_token     = var.do_token
  image         = "ubuntu-16-04-x64"
  region        = "lon1"
  size          = "s-1vcpu-1gb"
  snapshot_name = "base-{{isotime \"2006-01-02_03:04\"}}"
  ssh_username  = "root"
}

build {
  sources = [
    "source.digitalocean.main"
  ]

  provisioner "salt-masterless" {
    local_state_tree = "../salt"
  }
}
