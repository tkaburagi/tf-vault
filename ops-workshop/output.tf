output "role-id" {
  value = vault_approle_auth_backend_role.kv-read-all.role_id
}

output "namespaces" {
  value = [
    "Business Unit A ID:  ${vault_namespace.business-unit-a.id}",
    "Business Unit B ID:  ${vault_namespace.business-unit-b.id}"
  ]
}

output "enabled-auth-method" {
  value = [
    vault_auth_backend.approle.type,
    vault_auth_backend.userpass.type
  ]
}


output "policy-list" {
  value = [
    vault_policy.read-all.name,
    vault_policy.read-secret-1.name
  ]
}