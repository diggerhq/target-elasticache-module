variable "cluster_id" {
}

variable "cluster_description" {}

variable "redis_node_type" {
  default = "cache.t3.micro"
}

variable "engine_version" {
}

variable "redis_port" {
  default = 6379
}

variable "redis_number_nodes" {
  default = 1
}

variable "vpc_id" {}

variable "private_subnets" {}

variable "security_groups" {}

variable "tags" {}

