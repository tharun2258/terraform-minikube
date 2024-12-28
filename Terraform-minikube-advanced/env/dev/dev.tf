module "module_dev" {
  source          = "../../modules"
  ns_name         = var.ns_name
  label_test      = var.label_test
  container_image = var.container_image
  container_name  = var.container_name
  replicas        = var.replicas
  limits_cpu      = var.limits_cpu
  limits_memory   = var.limits_memory
  requests_cpu    = var.requests_cpu
  requests_memory = var.requests_memory
}
