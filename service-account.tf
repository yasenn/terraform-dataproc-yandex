# https://cloud.yandex.ru/docs/iam/concepts/users/service-accounts

resource "yandex_iam_service_account" "default" {
  name        = var.project_name
  description = "Service account for DataProc"
}

resource "yandex_resourcemanager_folder_iam_binding" "dataprocagent" {
  folder_id  = var.yc_folder_id
  role    = "dataproc.agent"
  members = [
    "serviceAccount:${yandex_iam_service_account.default.id}"
  ]
}
resource "yandex_resourcemanager_folder_iam_binding" "dataproc" {
  folder_id  = var.yc_folder_id
  role    = "mdb.dataproc.agent"
  members = [
    "serviceAccount:${yandex_iam_service_account.default.id}"
  ]
}

resource "yandex_resourcemanager_folder_iam_binding" "bucket-creator" {
  folder_id  = var.yc_folder_id
  role    = "editor"
  members = [
    "serviceAccount:${yandex_iam_service_account.default.id}"
  ]
}

resource "yandex_iam_service_account_static_access_key" "default" {
  service_account_id = yandex_iam_service_account.default.id
}
