region = "us-east-1"

availability_zones = ["us-east-1a", "us-east-1b"]

namespace = "vass"

stage = "test"

name = "consorciocrm"

# When updating the Kubernetes version, also update the API and client-go version in test/src/go.mod
kubernetes_version = "1.25"

oidc_provider_enabled = true

enabled_cluster_log_types = ["audit"]

cluster_log_retention_period = 5

instance_types = ["m5.large"]

desired_size = 2

max_size = 3

min_size = 1

kubernetes_labels = {}

cluster_encryption_config_enabled = false

addons = [
  {
    addon_name               = "vpc-cni"
    addon_version            = null
    resolve_conflicts        = "NONE"
    service_account_role_arn = null
  }
]
