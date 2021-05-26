provider "ovh" {
  endpoint = "ovh-eu"
}

module "vscode-server" {
  source = "github.com/Maladeras/tfc-do-droplet-T1d10"
  zone_dns = "caeldan.fr"
  ssh_private_key = "${var.ssh_private_key}"
  post_install = [
    "apt update -qq && apt upgrade --yes --with-new-pkgs docker-compose",
    "docker run -d --name=code-server -p 80:8443 -e PROXY_DOMAIN=${module.vscode-server.zone_dns} -e PASSWORD=${var.vscode_password} -e TZ=Europe/Paris --restart unless-stopped ghcr.io/linuxserver/code-server",
  ]
}

resource "ovh_domain_zone_record" "vscode" {
  zone = "caeldan.fr"
  subdomain = "vscode"
  fieldtype = "CNAME"
  target = "${module.vscode-server.uuid}"
}
