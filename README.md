# Usage

### Copy paste below code and update the config

```hcl
module "helm-app" {
  source      = "./appmodule"
  name        = "terraform-helm-app"
  namespace   = "default"
  values_yaml = <<EOF
replicaCount: 6

image:
  repository: bitnami/wordpress
  pullPolicy: IfNotPresent
  tag: "latest"

EOF
}
```

### Run the following command
```
terraform init
terraform apply
```