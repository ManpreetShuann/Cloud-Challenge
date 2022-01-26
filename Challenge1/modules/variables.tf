variable "project_id" {
  default     = ""
  description = "The ID of the gcp project "
}

variable "region" {
  default     = ""
  description = "The region where you want the resources"
}

variable "zone" {
  default     = ""
  description = "The zone for gcp resources"
}

variable "backend_bucket" {
  default     = ""
  description = "The backend bucket to store state files for terraform"
}

variable "backend_prefix" {
  default     = ""
  description = "The backend perfix for the files"
}
