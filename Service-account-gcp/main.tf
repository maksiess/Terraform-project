resource "google_service_account" "murodbey" {
    account_id   = "${var.account_id}"
    display_name = "${var.display_name}"
}

resource "google_service_account_key" "mykey" {
  depends_on          = ["google_service_account.murodbey"]
  service_account_id  = "${google_service_account.murodbey.name}"
  public_key_type     = "TYPE_X509_PEM_FILE"
#   valid_after         = "2014-10-02T15:01:23.045123456Z"  (The key can be used after this timestamp. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.)
#   valid_before        = "2014-10-02T15:01:23.045123456Z"  (The key can be used before this timestamp. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.) 
}

resource "google_project_iam_member" "shermat" {
    count   =  "${length(var.roles)}"
    role    =  "${element(var.roles, count.index)}"
    member  = "serviceAccount:${google_service_account.murodbey.email}"
}

# resource "google_service_account_key" "default" {
#     depends_on          = ["google_service_account.default"]
#     service_account_id  = "${google_service_account.default.name}"
# }