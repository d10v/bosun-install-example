output "ambari.ip" {
  value = "${digitalocean_droplet.ambari.ipv4_address}"
}
output "bosun-server.ip" {
  value = "${digitalocean_droplet.bosun-server.ipv4_address}"
}
output "bosun-store00.ip" {
  value = "${digitalocean_droplet.bosun-store00.ipv4_address}"
}
output "bosun-store01.ip" {
  value = "${digitalocean_droplet.bosun-store01.ipv4_address}"
}
output "bosun-store02.ip" {
  value = "${digitalocean_droplet.bosun-store02.ipv4_address}"
}
output "bosun-store03.ip" {
  value = "${digitalocean_droplet.bosun-store03.ipv4_address}"
}
