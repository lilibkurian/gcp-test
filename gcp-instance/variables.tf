
variable "instance_name" {
  description = "A unique name for the resource, required by GCE. Changing this forces a new resource to be created."
  default = "sap-hanstbg"
}

variable "instance_type" {
  description = "The GCE instance/machine type."
  default = "e2-medium"
}

variable "project_id" {
  description = "The ID of the project in which the resources will be deployed."
  default = "sigma-hallway-297803"
}

variable "zone" {
  description = "The zone that the instance should be created in."
  default = "us-central1-c"
}

variable "service_account_email" {
  description = "Email of service account to attach to the instance."
  default = "terraform@sigma-hallway-297803.iam.gserviceaccount.com"
}

variable "subnetwork" {
  description = "The name or self_link of the subnetwork where the isntance will be deployed. The subnetwork must exist in the same region this instance will be created in."
  default = "default"
}

variable "subnetwork_project" {
  description = "The name or self_link of the subnetwork project where the isntance will be deployed. The subnetwork must exist in the same region this instance will be created in."
  default = "default"
}

variable "source_image_family" {
  description = "GCE linux image family."
  default = "windows-2019"
}
/*
variable "source_image_project" {
  description = "Project name containing the linux image."
}

variable "boot_disk_size" {
  description = "Root disk size in GB"
}

variable "boot_disk_type" {
  description = "The GCE boot disk type.Set to pd-standard (for PD HDD)."
}

variable "autodelete_disk" {
  description = "Whether the disk will be auto-deleted when the instance is deleted."
}

variable "network_tags" {
  description = "List of network tags to attach to the instance."
}

variable "pd_kms_key" {
  description = "Customer managed encryption key to use in persistent disks. If none provided, a Google managed key will be used.."
}

variable "use_public_ip" {
  description = "Boolean for using Public IP address."
}
*/