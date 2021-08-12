resource "vault_auth_backend" "approle" {
  type = "approle"
}

resource "vault_approle_auth_backend_role" "kv-read-all" {
  backend        = vault_auth_backend.approle.path
  role_name      = "kv-read-all"
  token_policies = [vault_policy.read-all.name]
}

resource "vault_auth_backend" "userpass" {
  type = "userpass"

  tune {
    max_lease_ttl      = "90000s"
  }
}