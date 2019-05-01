resource "google_container_cluster" "gke-cluster" {
    name                = "snoop-dogg"
    network             = "default"
    # subnetwork          = "us-central1"
    location            = "us-central1"
    min_master_version  = "1.11.8-gke.6"
    remove_default_node_pool = true
    initial_node_count  = "1"
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "snoop-dogg-pool"
  location   = "us-central1"
  cluster    = "${google_container_cluster.gke-cluster.name}"
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = "n1-standard-2"

    metadata {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}