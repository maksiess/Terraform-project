resource "kubernetes_namespace" "namespaces" {
  metadata {
    annotations {
      name = "example-annotation"
    }

    labels {
      mylabel = "label-value"
    }

    name = "dev-students"
    name = "qa-students"
    name = "prod-students"
  }
}