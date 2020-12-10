resource "kubernetes_persistent_volume_claim" "bitbucket-pvc" {

  metadata {
    name      = "bitbucket-pvc"
    namespace = "${var.namespace}"

    labels {
      app = "bitbucket-deployment"
    }
  }

  spec {
    access_modes = ["ReadWriteOnce"]

    resources {
      requests {
        storage = "10Gi"
      }
    }
  }
}

resource "kubernetes_deployment" "bitbucket-deployment" {
  metadata {
    name      = "bitbacket-deployment"
    namespace = "${var.namespace}"

    labels {
      app = "bitbucket-deployment"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels {
        app = "bitbucket-deployment"
      }
    }

    template {
      metadata {
        labels {
          app = "bitbucket-deployment"
        }
      }

      spec {
        volume {
          name = "bitbucket-pvc"

          persistent_volume_claim {
            claim_name = "bitbucket-pvc"
          }
        }

        container {
          name  = "bitbucket-container"
          image = "atlassian/bitbucket-server:latest"

          port {
            name           = "bitbucket-http"
            container_port = 7990
          }

          volume_mount {
            name       = "bitbucket-pvc"
            mount_path = "/var/lib/bitbucket"
          }
          image_pull_policy = "IfNotPresent"
        }
      }
    }
  }
}

resource "kubernetes_service" "bitbucket-service" {
  metadata {
    name      = "bitbucket-service"
    namespace = "${var.namespace}"
  }

  spec {
    port {
      port        = 80
      target_port = 7990
    }

    selector {
      app = "bitbucket-deployment"
    }

    type = "LoadBalancer"
  }
}