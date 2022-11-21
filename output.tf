output "redis_url" {
  value = var.redis_number_nodes > 1 ? "${aws_elasticache_replication_group.elasticache_replication_group[0].primary_endpoint_address}:${var.redis_port}" : "${aws_elasticache_cluster.elasticache_cluster[0].cache_nodes[0].address}:${var.redis_port}"
}

output "redis_hostname" {
  value = var.redis_number_nodes > 1 ? aws_elasticache_replication_group.elasticache_replication_group[0].primary_endpoint_address : aws_elasticache_cluster.elasticache_cluster[0].cache_nodes[0].address
}

output "redis_port" {
  value = var.redis_number_nodes > 1 ? aws_elasticache_replication_group.elasticache_replication_group[0].port : aws_elasticache_cluster.elasticache_cluster[0].cache_nodes[0].port
}
