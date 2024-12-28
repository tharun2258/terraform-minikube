variable "ns_name" {
  description = "The namespace name for the Kubernetes cluster."
  type        = string
}

variable "label_test" {
  description = "Label to identify the application."
  type        = string
}

variable "container_image" {
  description = "Docker image to use for the container."
  type        = string
}

variable "container_name" {
  description = "Name of the container."
  type        = string
}

variable "replicas" {
  description = "Number of replicas for the deployment."
  type        = number
}

variable "limits_cpu" {
  description = "CPU limit for the container."
  type        = string
}

variable "limits_memory" {
  description = "Memory limit for the container."
  type        = string
}

variable "requests_cpu" {
  description = "CPU request for the container."
  type        = string
}

variable "requests_memory" {
  description = "Memory request for the container."
  type        = string
}
