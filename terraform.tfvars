project_id      = "extreme-quasar-399203"
keyring         = "gcp-key-ring-aabb"
location        = "global"
keys            = ["my-key-00", "my-key-11"]
prevent_destroy = false
set_owners_for  = ["my-key-00", "my-key-11"]
owners          = ["serviceAccount:kms-sa@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com"]

set_encrypters_for = ["my-key-00", "my-key-11"]
encrypters         = ["serviceAccount:kms-sa@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com"]

set_decrypters_for = ["my-key-00", "my-key-11"]
decrypters         = ["serviceAccount:kms-sa@extreme-quasar-399203.iam.gserviceaccount.com", "serviceAccount:kms-sa1@extreme-quasar-399203.iam.gserviceaccount.com"]

