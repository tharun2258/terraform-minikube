ns_name         = "k8s-ns-by-tf-dev"
label_test      = "MyExampleApp-dev"
container_image = "nginx:1.21.6"
container_name  = "example-dev"
replicas        = 2
limits_cpu      = "0.5"
limits_memory   = "512Mi"
requests_cpu    = "250m"
requests_memory = "50Mi"