resource "google_compute_network" "vpc_network" {
  name                    = "micro-k8s-gozd-vpc"
  auto_create_subnetworks = true
}
