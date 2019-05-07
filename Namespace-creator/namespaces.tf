resource "kubernetes_namespace" "namespaces" {
  metadata {
    name = "dev-students" 
  }
}

resource "kubernetes_namespace" "namespaces" {
  metadata {
    name = "qa-students" 
  }
}

resource "kubernetes_namespace" "namespaces" {
  metadata {
    name = "prod-students" 
  }
}