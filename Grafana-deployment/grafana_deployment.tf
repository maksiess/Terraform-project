resource "kubernetes_secret" "grafana-secrets" {
  metadata {
    name      = "grafana-secrets"
    namespace = "tools"
  }
  data {
    password = "${var.password}"
    username = "admin"
  }
  type = "Opaque"
}

resource "kubernetes_persistent_volume_claim" "grafan_pvc" {

  metadata {
    name      = "grafan-pvc"
    namespace = "tools"

    labels {
      app = "grafana-deployment"
    }
  }

  spec {
    access_modes = ["ReadWriteOnce"]

    resources {
      requests {
        storage = "5Gi"
      }
    }
  }
}
resource "kubernetes_deployment" "grafana-deployment" {
  metadata {
    name      = "grafana-deployment"
    namespace = "tools"

    labels {
      app       = "grafana-deployment"
      component = "core"
    }
  }

  spec {
    replicas = 1

    selector {
      match_labels {
        app = "grafana-deployment"
      }
    }

    template {
      metadata {
        labels {
          app       = "grafana-deployment"
          component = "core"
        }
      }

      spec {
        volume {
          name = "grafana_pvc"

          persistent_volume_claim {
            claim_name = "grafana-pvc"
          }
        }

        container {
          name  = "grafana-core"
          image = "grafana/grafana:4.2.0"
          env {
            name  = "GF_AUTH_BASIC_ENABLED"
            value = "true"
          }
          env {
            name = "GF_SECURITY_ADMIN_USER"
            value_from {
              secret_key_ref {
                name = "grafana-secrets"
                key  = "username"
              }
            }
          }
          env {
            name = "GF_SECURITY_ADMIN_PASSWORD"
            value_from {
              secret_key_ref {
                name = "grafana-secrets"
                key  = "password"
              }
            }
          }
          env {
            name  = "GF_AUTH_ANONYMOUS_ENABLED"
            value = "false"
          }
          resources {
            limits {
              cpu    = "100m"
              memory = "100Mi"
            }
            requests {
              cpu    = "100m"
              memory = "100Mi"
            }
          }
          volume_mount {
            name       = "grafana-pvc"
            mount_path = "/var/lib/grafana"
          }
          readiness_probe {
            http_get {
              path = "/login"
              port = "3000"
            }
          }
          image_pull_policy = "IfNotPresent"
        }
      }
    }
  }
}

resource "kubernetes_service" "grafana-service" {
  metadata {
    name      = "grafana-service"
    namespace = "tools"
    labels {
      component = "core"
      app       = "grafana-deployment"
    }
  }
  spec {
    port {
      protocol    = "TCP"
      port        = 80
      target_port = 3000
    }
    selector {
      app       = "grafana-deployment"
      component = "core"
    }
    type = "LoadBalancer"
  }
}