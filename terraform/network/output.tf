output "vpc_name_output" {
    value = google_compute_network.my_vpc.name
  
}
output "subnet_1_name_output" {
  value = google_compute_subnetwork.public_subnet.name
}
