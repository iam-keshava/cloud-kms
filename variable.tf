variable "project_id" {
  description = "Project id where the keyring will be created."
  type        = string
  default     = "extreme-quasar-399203"

}

# refer  https://cloud.google.com/kms/docs/locations
variable "location" {
  description = "Location for the keyring."
  type        = string
  default     = "global"
}

variable "keyring" {
  description = "Keyring name."
  type        = string
  default     = "gcp-key-ring-aab"

}
variable "keys" {
  description = "Key names."
  type        = list(string)
  default     = []


}

variable "prevent_destroy" {
  description = "Set the prevent_destroy lifecycle attribute on keys."
  type        = bool
  default     = false
}

variable "key_destroy_scheduled_duration" {
  description = "Set the period of time that versions of keys spend in the DESTROY_SCHEDULED state before transitioning to DESTROYED."
  type        = string
  default     = null
}

variable "purpose" {
  type        = string
  description = "The immutable purpose of the CryptoKey. Possible values are ENCRYPT_DECRYPT, ASYMMETRIC_SIGN, and ASYMMETRIC_DECRYPT."
  default     = "ENCRYPT_DECRYPT"
}
variable "key_rotation_period" {
  description = "Generate a new key every time this period passes."
  type        = string
  default     = "7776000s"
}
variable "set_owners_for" {
  description = "Name of keys for which owners will be set."
  type        = list(string)
  #   default     = []

}

variable "owners" {
  description = "List of comma-separated owners for each key declared in set_owners_for."
  type        = list(string)
  #   default     = ["serviceAccount:kms-sa@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com"]
  # }
}
variable "set_encrypters_for" {
  description = "Name of keys for which encrypters will be set."
  type        = list(string)
  #   default     = []

}

variable "encrypters" {
  description = "List of comma-separated owners for each key declared in set_encrypters_for."
  type        = list(string)
  #   default     = ["serviceAccount:kms-sa@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com"]

}

variable "set_decrypters_for" {
  description = "Name of keys for which decrypters will be set."
  type        = list(string)
  #   default     = []

}

variable "decrypters" {
  description = "List of comma-separated owners for each key declared in set_decrypters_for."
  type        = list(string)
  #   default     = ["serviceAccount:kms-sa@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com"]

}
variable "key_algorithm" {
  type        = string
  description = "The algorithm to use when creating a version based on this template. See the https://cloud.google.com/kms/docs/reference/rest/v1/CryptoKeyVersionAlgorithm for possible inputs."
  default     = "GOOGLE_SYMMETRIC_ENCRYPTION"
}

variable "key_protection_level" {
  type        = string
  description = "The protection level to use when creating a version based on this template. Default value: \"SOFTWARE\" Possible values: [\"SOFTWARE\", \"HSM\"]"
  default     = "SOFTWARE"
}


# serviceAccount:service-${data.google_project.project.number}@compute-system.iam.gserviceaccount.com"

# KMS-Terraform\example\kms-sa.json
