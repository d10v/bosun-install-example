variable "ssh_fingerprint" {}
variable "do_token" {}
variable "default_size" { default = "4gb" }

provider "digitalocean" {
    token = "${var.do_token}"
}

resource "digitalocean_ssh_key" "ambari-ssh-key" {
     name = "ambari-ssh-key"
     public_key = "${file("./files/id_rsa.pub")}"
}

resource "digitalocean_droplet" "ambari" {
    image = "centos-6-5-x64"
    name = "ambari"
    region = "fra1"
    size = "${var.default_size}"
    ssh_keys = [ "${var.ssh_fingerprint}" ]
    depends_on = [ "digitalocean_ssh_key.ambari-ssh-key" ]
}

resource "digitalocean_droplet" "bosun-store00" {
    image = "centos-6-5-x64"
    name = "bosun-store00"
    region = "fra1"
    size = "4gb"
    ssh_keys = [ "${var.ssh_fingerprint}" ]
    depends_on = [ "digitalocean_ssh_key.ambari-ssh-key" ]
}

resource "digitalocean_droplet" "bosun-store01" {
    image = "centos-6-5-x64"
    name = "bosun-store01"
    region = "fra1"
    size = "${var.default_size}"
    ssh_keys = [ "${var.ssh_fingerprint}" ]
    depends_on = [ "digitalocean_ssh_key.ambari-ssh-key" ]
}

resource "digitalocean_droplet" "bosun-store02" {
    image = "centos-6-5-x64"
    name = "bosun-store02"
    region = "fra1"
    size = "${var.default_size}"
    ssh_keys = [ "${var.ssh_fingerprint}" ]
    depends_on = [ "digitalocean_ssh_key.ambari-ssh-key" ]
}

resource "digitalocean_droplet" "bosun-store03" {
    image = "centos-6-5-x64"
    name = "bosun-store03"
    region = "fra1"
    size = "${var.default_size}"
    ssh_keys = [ "${var.ssh_fingerprint}" ]
    depends_on = [ "digitalocean_ssh_key.ambari-ssh-key" ]
}

resource "digitalocean_droplet" "bosun-server" {
    image = "centos-6-5-x64"
    name = "bosun-server"
    region = "fra1"
    size = "${var.default_size}"
    ssh_keys = [ "${var.ssh_fingerprint}" ]
    depends_on = [ "digitalocean_ssh_key.ambari-ssh-key" ]
}
