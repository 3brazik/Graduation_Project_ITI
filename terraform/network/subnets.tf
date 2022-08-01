resource "google_compute_subnetwork" "public_subnet" {
  name          = var.subnet_1_name
  ip_cidr_range = var.subnet_1_cidr
  region        = "europe-west1"
  network       = google_compute_network.my_vpc.id  
  private_ip_google_access = true
  
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = var.subnet_2_name
  network       = google_compute_network.my_vpc.id
  ip_cidr_range = var.subnet_2_cidr
  region        = "europe-west1"
  private_ip_google_access = true
}