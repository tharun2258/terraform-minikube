module "module_prod" {
  source          = "../../modules"
  ns_name         = "k8s-ns-by-tf-prod"
  label_test      = "MyExampleApp-prod"
  container_image = "nginx:1.21.6"
  container_name  = "example-prod"
  replicas        = 2
  limits_cpu      = "0.5"
  limits_memory   = "512Mi"
  requests_cpu    = "250m"
  requests_memory = "50Mi"
}