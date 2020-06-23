provider "kubernetes" {
  config_context_cluster = "minikube"
}

resource "kubernetes_pod" "firstpod1" {
  metadata {
    name = "container-pod-initial"
  }
  spec {
    container {
      image = "vimal13/apache-webserver-php"
      name = "pod-initial"
    }
  }
}