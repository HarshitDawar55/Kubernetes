resource "kubernetes_replication_controller" "rc1" {
  metadata {
    name = "container-rc"
  }
  spec {
    replicas = 3
    selector =  {
      env = "Production",
      dc = "India",
      app = "Webserver"
    }

    template {
      metadata {
        labels = {
          env = "Production",
          dc = "India",
          app = "Webserver"
        }
      }
      spec {
        container {
          name = "mycon1"
          image = "vimal13/apache-webserver-php"
        }
      }
    }
  }
}