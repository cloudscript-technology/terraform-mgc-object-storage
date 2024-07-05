terraform {
  required_providers {
    mgc = {
      source  = "magalucloud/mgc"
      version = "0.19.3"
    }
  }
}

resource "mgc_object-storage_buckets" "bucket" {
  # Required
  bucket              = var.bucket
  bucket_is_prefix    = var.bucket_is_prefix

  # Optionals
  authenticated_read  = var.authenticated_read
  aws_exec_read       = var.aws_exec_read
  enable_versioning   = var.enable_versioning
  grant_full_control  = var.grant_full_control
  grant_read          = var.grant_read
  grant_read_acp      = var.grant_read_acp
  grant_write         = var.grant_write
  grant_write_acp     = var.grant_write_acp
  private             = var.private
  public_read         = var.public_read
  public_read_write   = var.public_read_write
  recursive           = var.recursive
}