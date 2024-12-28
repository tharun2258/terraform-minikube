variable "ns_name" {
  type        = string
  description = "namespace name for the cluster"
}

variable "label_test" {
  type        = string
  description = "label test value"
}

variable "container_name" {
  type        = string
  description = "container name value"
}

variable "container_image" {
  type        = string
  description = "container image value"
}

variable "replicas" {
  type        = number
  description = "number of replicas"
}

variable "limits_cpu" {
  type        = string
  description = "cpu limits"
}

variable "limits_memory" {
  type        = string
  description = "memory limits"
}

variable "requests_cpu" {
  type        = string
  description = "cpu requests"
}

variable "requests_memory" {
  type        = string
  description = "memory limits"
}
