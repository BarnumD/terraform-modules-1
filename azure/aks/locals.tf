/*
 * Configure a default label to use on resources.
 * Creates a label unless one is passed via a variable, via count.
 */
locals {
  cluster_name = var.cluster_name
  additional_node_pools = { for k, v in local.node_pools : k => v if k != var.default_node_pool }
  dns_prefix = var.dns_prefix != null ? var.dns_prefix : local.cluster_name
  node_pools   = zipmap(keys(var.node_pools), [for node_pool in values(var.node_pools) : merge(var.node_pool_defaults, node_pool)])
  node_resource_group_name = (var.node_resource_group_name != null ? var.node_resource_group_name : "MC_${local.cluster_name}")
  windows_nodes = length([for v in local.node_pools : v if lower(v.os_type) == "windows"]) > 0 ? true : false
}