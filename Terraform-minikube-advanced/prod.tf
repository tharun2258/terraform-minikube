module "module_prod"{
    source ="./modules"
    ns-name = "k8s-ns-by-tf-prod"
    label-test = "MyExampleApp-prod"
    container-image = "nginx:1.21.6"
    container-name = "example-prod"
    replicas = 2
    limits-cpu = "0.5"
    limits-memory= "512Mi"
    requests-cpu = "250m"
    requests-memory = "50Mi"
}