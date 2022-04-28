# https://cloud.yandex.ru/docs/vpc/operations/network-create
resource "yandex_vpc_network" "default" {
  name = var.project_name
  description = "VPC for DataProc"
}

resource "yandex_vpc_subnet" "default" {
  v4_cidr_blocks = ["10.2.0.0/16"]
  zone           = var.yc_zone
  network_id     = "${yandex_vpc_network.default.id}"
}
