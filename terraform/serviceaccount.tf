
#                            instance service_account
# creating instance Service account to access GKE cluster to deploy the application   
resource "google_service_account" "instance_service_account" {
  account_id   = "instance-service-account"
}

#creating role to allow service account to access gke cluster
resource "google_project_iam_binding" "instance_service_account_iam_role" {
  project = "mohamed-abdelrazik-project"
  role    = "roles/container.admin" #this role --Provides access to full management of clusters and their Kubernetes API objects.
  members = [
    "serviceAccount:${google_service_account.instance_service_account.email}"
  ]
}

#                              GKE cluster service account 
resource "google_service_account" "gke_cluster_service_account" {
  account_id   = "gke-cluster-service-account"
}


resource "google_project_iam_binding" "gke_service_account_iam_role" {
  project = "mohamed-abdelrazik-project"
  role    = "roles/storage.admin" #this role -Grants full control of buckets and objects.
  members = [
    "serviceAccount:${google_service_account.gke_cluster_service_account.email}"
  ]
}