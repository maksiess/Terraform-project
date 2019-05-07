resource "kubernetes_namespace" "namespaces" {
  metadata {
    annotations {
      name = "example-annotation"
    }

    labels {
      mylabel = "label-value"
    }

    name = "dev-students" 
    # name = "prod-students"
  }
  metadata {
    name = "qa-students"
  }
}