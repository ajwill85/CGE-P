# consumers/prod/main.tf
module "data_bucket" {
  source = "../../modules/compliant-gcs-bucket"

  gcp_project        = "celestial-sonar-479723-s1"
  project_label      = "cgep-lab"
  environment        = "prod"
  retention_days     = 365
  bucket_name_suffix = "prod-data-ajmm"
}