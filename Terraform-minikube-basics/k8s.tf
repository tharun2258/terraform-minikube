resource "kubernetes_namespace" "example" {
  metadata {
    name = var.ns-name
  }
}

resource "kubernetes_deployment" "example" {
  metadata {
    name = "terraform-example"
    labels = {
      test =  var.label-test
    }
    namespace =  var.ns-name
  }

  spec {
    replicas =  var.replicas

    selector {
      match_labels = {
        test =  var.label-test
      }
    }

    template {
      metadata {
        labels = {
          test =  var.label-test
        }
      }

      spec {
        container {
          image =  var.container-image
          name  =  var.container-name

          resources {
            limits = {
              cpu    =  var.limits-cpu
              memory =  var.limits-memory
            }
            requests = {
              cpu    =  var.requests-cpu
              memory =  var.requests-memory
            } 
          }
        }
      }
    }
  }
}