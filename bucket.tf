resource "yandex_storage_bucket" "default" {
  depends_on = [
    yandex_resourcemanager_folder_iam_binding.bucket-creator
  ]

  bucket     = var.project_name
  access_key = yandex_iam_service_account_static_access_key.default.access_key
  secret_key = yandex_iam_service_account_static_access_key.default.secret_key
}
