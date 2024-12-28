resource "kubernetes_namespace" "example" {
  metadata {
    name = var.ns_name
  }
}

resource "kubernetes_deployment" "example" {
  metadata {
    name = "terraform-example"
    labels = {
      test =  var.label_test
    }
    namespace =  var.ns_name
  }

  spec {
    replicas =  var.replicas

    selector {
      match_labels = {
        test =  var.label_test
      }
    }

    template {
      metadata {
        labels = {
          test =  var.label_test
        }
      }

      spec {
        container {
          image =  var.container_image
          name  =  var.container_name

          resources {
            limits = {
              cpu    =  var.limits_cpu
              memory =  var.limits_memory
            }
            requests = {
              cpu    =  var.requests_cpu
              memory =  var.requests_memory
            } 
          }
        }
      }
    }
  }
}