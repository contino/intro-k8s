variable "project" {
  default = "contino-sandbox"
}

variable "svc_accnt_permissions" {
  type = list(string)
  default = [
    "container.namespaces.create",
    "container.pods.create",
    "container.pods.getLogs",
    "container.pods.portForward",
    "container.pods.delete",
    "container.resourceQuotas.create",
    "container.limitRanges.create",
    "container.resourceQuotas.delete",
    "container.replicaSets.create",
    "container.deployments.create",
    "container.replicaSets.updateScale",
    "container.deployments.update",
    "container.replicaSets.delete",
    "container.replicaSets.update",
    "container.deployments.delete",
    "container.persistentVolumeClaims.create",
    "container.persistentVolumeClaims.delete",
    "container.configMaps.create",
    "container.configMaps.update",
    "container.configMaps.delete",
    "container.pods.exec",
    "container.secrets.create",
    "container.secrets.list",
    "container.services.create",
    "container.services.delete",
    "resourcemanager.projects.get",
    "container.clusters.get",
    "container.services.list",
    "container.pods.list",
    "container.namespaces.list",
    "container.pods.get",
    "container.resourceQuotas.list",
    "container.resourceQuotas.get",
    "container.limitRanges.get",
    "container.limitRanges.delete",
    "container.replicaSets.get",
    "container.replicaSets.list",
    "container.replicaSets.get",
    "container.replicaSets.list",
    "container.deployments.list",
    "container.deployments.get",
    "container.persistentVolumeClaims.get",
    "container.persistentVolumeClaims.get",
    "container.persistentVolumes.list",
    "container.persistentVolumes.get",
    "container.configMaps.get",
    "container.services.get",
    "container.configMaps.list",
    "container.secrets.get",
    "container.serviceAccounts.get",
    "container.roles.get",
    "container.roleBindings.get",
    "container.clusters.list",
    "storage.buckets.create",
    "storage.buckets.delete",
    "storage.buckets.get",
    "storage.buckets.list",
    "storage.buckets.update",
    "storage.objects.create",
    "storage.objects.delete",
    "storage.objects.get",
    "storage.objects.list",
    "storage.objects.update"]
}

variable "user_accnt_permissions" {
  type = list(string)
  default = [
    "compute.instances.list",
    "compute.instances.get",
    "compute.projects.get",
    "compute.zones.list",
    "resourcemanager.projects.get",
    "compute.instances.setMetadata",
    "iam.serviceAccounts.actAs",
    "iam.serviceAccounts.get",
    "iam.serviceAccounts.list",]
}

variable "users" {
  type = list(string)
  default = [
    "user:"]
}

variable "zone" {
  type = string
  default = "us-east1-b"
}

variable "instance_type" {
  type = string
  default = "n1-standard-1"
}

variable "node_count" {
  default = 1
}
