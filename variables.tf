# defaul name for all resources
variable project_name { type = string }    

# https://cloud.yandex.ru/docs/resource-manager/api-ref/authentication
variable yc_token { 
  type = string
  sensitive = true
}

# https://cloud.yandex.ru/docs/resource-manager/api-ref/Cloud/get
variable yc_cloud_id { type = string }    

# https://cloud.yandex.ru/docs/resource-manager/api-ref/Folder/
variable yc_folder_id { type = string }   

# https://cloud.yandex.ru/docs/compute/api-ref/Zone/
variable yc_zone {
  type = string 
  default = "ru-central1-b"
}        

# https://cloud.yandex.ru/docs/data-proc/operations/cluster-create
variable dataproc_version { 
  type = string 
  default = "2.0"
}        
