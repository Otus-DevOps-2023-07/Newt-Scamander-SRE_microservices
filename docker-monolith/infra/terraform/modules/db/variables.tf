variable "public_key_path" {
  description = "Path to the public key used for ssh access"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "reddit-db-base"
}
variable "subnet_id" {
  description = "Subnets for modules"
}
variable "db_instance_count" {
  description = "Set the instances coun. Applied to db instance only. not used yet"
  type        = number
  default     = "1"
}
variable "db_initial_labels" {
  description = "Be carefully - all letters should be lowercase"
  type        = map(any)
  default = {
    role     = "db-instance"
    hm_num   = "hm-13"
    hw_names = "docker-2"
  }
}
