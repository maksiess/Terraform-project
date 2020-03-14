output "VPC_ID" {
  value = "${data.terraform_remote_state.dev.VPC_ID}"
}

output "Subnet1" {
  value = "${data.terraform_remote_state.dev.Subnet1}"
}

output "Subnet2" {
  value = "${data.terraform_remote_state.dev.Subnet2}"
}

output "Subnet3" {
  value = "${data.terraform_remote_state.dev.Subnet3}"
}
output "private_subnet1" {
  value = "${data.terraform_remote_state.dev.private_subnet1}"
}

output "private_subnet2" {
  value = "${data.terraform_remote_state.dev.private_subnet2}"
}

output "private_subnet3" {
  value = "${data.terraform_remote_state.dev.private_subnet3}"
}


