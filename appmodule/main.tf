resource "helm_release" "application" {
  name      = var.name
  namespace = var.namespace
  chart     = "${path.module}/application"
  wait      = false
  values    = [
    var.values_yaml
  ]
}


