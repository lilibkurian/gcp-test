//
/*
output "abc" {
    value = google_compute_address.gcp_sap_bastion_ip.*.address
}
*/

output pqr {
    value = google_compute_region_disk.regiondisk.*.self_link
}