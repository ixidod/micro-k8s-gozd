output "cluster_name" {
  value = google_container_cluster.primary.name
}

output "kubeconfig" {
  value = <<EOT
  gcloud container clusters get-credentials ${google_container_cluster.primary.name} --region ${var.region} --project ${var.project_id}
  EOT
}
