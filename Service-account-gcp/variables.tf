variable "account_id" {
    description = "newproject-237921"
}
variable "display_name" {
    description = "The display name for the service account. Can be updated without creating a new resource."
    default     = "Snoop-dogg"
}
variable "roles" {
    type        = "list"
    description = "The roles that will be granted to the account."
    default     = ["roles/cloudsql.owner"]
}