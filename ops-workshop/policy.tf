resource "vault_policy" "read-secret-1" {
  name = "read-secret-1"

  policy = <<EOT
    path "kv/data/sample-secret-1" {
      capabilities = [ "read" ]
    }

    path "kv/*" {
      capabilities = [ "list" ]
    }
  EOT
}

resource "vault_policy" "read-all" {
  name = "read-all"

  policy = <<EOT
    path "kv/data/*" {
      capabilities = [ "list", "read" ]
    }
  EOT
}