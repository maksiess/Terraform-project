# provider "google" {
#   credentials   = "${file("${var.servicePath}")}"
#   project       = "${var.project}"
#   region        = "${var.region}"
# }
# module "my-cluster" {
#     name                = "snoop-dogg"
#     network             = "default"
#     subnetwork          = "us-central1"
#     zone                = "us-central1-a"
#     kube_version        = "1.11.8-gke.6"
#     initial_node_count  = "3"
#     machine_type        = "n1-standard-2"
# }

# resource "google_container_cluster" "gke-cluster" {
#   name                     = "${var.name}"
#   location                 = "${var.zone}"
#   remove_default_node_pool = true
#   initial_node_count       = 1
#   min_master_version       = "${var.kube_version}"
#   enable_legacy_abac       = false
#   master_auth {
#     username = ""
#     password = ""
#     client_certificate_config {
#       issue_client_certificate = false
#     }
#   }
# }

resource "google_container_cluster" "gke-cluster" {
    name                = "snoop-dogg"
    network             = "default"
    # subnetwork          = "us-central1"
    location            = "us-central1"
    min_master_version  = "1.11.8-gke.6"
    initial_node_count  = "3"
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "snoop-dogg-pool"
  location   = "us-central1"
  cluster    = "${google_container_cluster.gke-cluster.name}"
  node_count = 2

  node_config {
    preemptible  = true
    machine_type = "n1-standard-1"

  }
}