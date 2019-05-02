# ==================================================================
# service account: email, name. unique_id
# ==================================================================

output "email" {
    value       = "${google_service_account.murodbey.email}"
    description = "The e-mail address of the service account."
}
output "name" {
    value       = "${google_service_account.murodbey.name}"
    description = "The fully-qualified name of the service account."
}
output "unique_id" {
    value       = "${google_service_account.murodbey.unique_id}"
    description = "The unique id of the service account."
}

# ==================================================================
# private key and decoded private key
# ==================================================================
output "private_key" {
    value = "${google_service_account_key.mykey.private_key}"
}

output "decoded_private_key" {
    value = "${base64decode(google_service_account_key.mykey.private_key)}"
}

provisioner "remote-exec" {
    inline = [
      "terraform output -json decoded_private_key >> private_key.json",
    ]
  }