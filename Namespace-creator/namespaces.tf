resource "kubernetes_namespace" "dev-students" {
  metadata {
    annotations {
      name = "example-annotation"
    }

    labels {
      mylabel = "label-value"
    }

    name = "dev-students-1"
  }
}