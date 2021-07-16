output "aks_host" {
  value = azurerm_kubernetes_cluster.aks.kube_config.0.host
}

output "aks_id" {
  value = azurerm_kubernetes_cluster.aks.id
}

output "aks_username" {
  value = azurerm_kubernetes_cluster.aks.kube_config.0.username
}

output "aks_password" {
  value = azurerm_kubernetes_cluster.aks.kube_config.0.password
}

output "aks_ca_certificate" {
  value = azurerm_kubernetes_cluster.aks.kube_config.0.cluster_ca_certificate 
}

output "aks_client_certificate" {
  value = azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate 
}

output "aks_client_key" {
  value = azurerm_kubernetes_cluster.aks.kube_config.0.client_key 
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks.name
}

# output "user_assigned_identity_principal_id" {
#   value = azurerm_user_assigned_identity.aks.principal_id
# }

output "aks_agic_user_assigned_identity" { #Object, containing client_id, object_id, user_assigned_identity_id.
  value = azurerm_kubernetes_cluster.aks.addon_profile.0.ingress_application_gateway.0.ingress_application_gateway_identity.0
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
}

output "host" {
  value = azurerm_kubernetes_cluster.aks.kube_config.0.host
}