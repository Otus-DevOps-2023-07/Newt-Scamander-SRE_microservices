variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}

variable "subnet_id" {
  description = "Subnets for modules"
}

variable "DB_connection" {
  description = "db url path"
}

variable "app_instance_count" {
  description = "Set the instances count"
  type        = number
  default     = "2"
}

variable "app_initial_labels" {
  description = "Be carefully - all letters should be lowercase"
  type        = map(any)
  default = {
    role     = "app-instance"
    hm_num   = "hm-13"
    hw_names = "docker-2"
  }
}
