terraform {
  required_version = ">= 1.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Minimal IaC fixture for taxonomy rows that expect infrastructure-as-code in the repo.
# Not used by cJSON runtime; satisfies honest IaC presence for manual all-lane runs.

resource "aws_s3_bucket" "cjson_whitebox_artifact_placeholder" {
  bucket = "testable-cjson-whitebox-placeholder-do-not-apply"

  lifecycle {
    prevent_destroy = false
  }
}