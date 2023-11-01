variable "ya-cloud_service-token" {
  type        = string
  description = "yandex cloud service account token"
}
variable "cloud_id" {
  description = "Cloud"
  default     = "Enter your cloud-id here or use own *.tfvars"
}
variable "folder_id" {
  description = "Folder"
  default     = "Enter your folder-id here or use own *.tfvars"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "Enter your 'availability zone' name here or use own *.tfvars"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
  default     = "Enter relative path to your *.pub ssh key here or use own *.tfvars"

}
variable "image_id" {
  type        = string
  description = "yandex cloud 'Golden image' ID"
  default     = "Enter your 'Golden image' image-id here or use own *.tfvars"
}

variable "app_disk_image_id" {
  type        = string
  description = "yandex cloud 'Disk image for reddit app' ID"
  default     = "Enter your 'Golden reddit app' image-id here or use own *.tfvars"
}

variable "db_disk_image_id" {
  type        = string
  description = "yandex cloud 'Disk image for reddit db' ID"
  default     = "Enter your 'Golden reddit db' image-id here or use own *.tfvars"
}

variable "DB_connection_address" {
  type        = string
  description = "database_url(ip)"
  default     = "localhost"
}

variable "subnet_id" {
  type        = string
  description = "Subnet"
  default     = "Enter your cloud-subnet-id here or use own *.tfvars"

}

variable "service_account_key_file" {
  description = "key.json"
  default     = "Enter the path and name your service account key *.json or use own *.tfvars"

}
variable "app_instance_count" {
  description = "Set the instances coun. Applied to app (docker) instance only"
  type        = number
  default     = "1"
}

variable "initial_labels" {
  description = "Be carefully - all letters should be lowercase"
  type        = map(any)
  default = {
    hm_num   = "hm-7"
    hw_names = "terraform-2"
  }
}
