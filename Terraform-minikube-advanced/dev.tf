module "module_dev"{
    source ="./modules"
    ns-name = "k8s-ns-by-tf-dev"
    label-test = "MyExampleApp-dev"
    container-image = "nginx:1.21.6"
    container-name = "example-dev"
    replicas = 2
    limits-cpu = "0.5"
    limits-memory= "512Mi"
    requests-cpu = "250m"
    requests-memory = "50Mi"
}