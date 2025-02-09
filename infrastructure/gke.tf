resource "google_container_cluster" "primary" {
  name                      = "micro-k8s-gozd-cluster"
  location                  = var.region
  remove_default_node_pool  = true
  initial_node_count        = 1

  network = google_compute_network.vpc_network.name
}

resource "google_container_node_pool" "primary_nodes" {
  name       = "node-pool"
  location   = var.region
  cluster    = google_container_cluster.primary.name
  node_count = var.node_count

  node_config {
    preemptible  = true
    machine_type = "e2-micro"
    disk_size_gb = 10
  }
}
