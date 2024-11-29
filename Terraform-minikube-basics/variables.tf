variable "ns-name"{
    type = string
    description = "namespace name for the cluster"
}

variable "label-test"{
    type = string
    description = "label test value"
}

variable "container-name"{
    type = string
    description = "container name value"
}

variable "container-image"{
    type = string
    description = "container image value"
}

variable "replicas"{
    type = number
    description = "number of replicas"
}

variable "limits-cpu"{
    type = string
    description = "cpu limits"
}

variable "limits-memory"{
    type = string
    description = "memory limits"
}

variable "requests-cpu"{
    type = string
    description = "cpu requests"
}

variable "requests-memory"{
    type = string
    description = "memory limits"
}