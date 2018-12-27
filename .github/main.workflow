workflow "New workflow" {
  on = "push"
  resolves = ["Deploy to Azure"]
}

action "Deploy to Azure" {
  uses = "./.github/azdeploy"
  secrets = ["SERVICE_PASS"]
  env = {
    SERVICE_PRINCIPAL="http://ServicePrincipalName",
    TENANT_ID="0c2ebf14-f2c2-4520-81e2-471a3c80061a".
    APPID="4ed29b99-c265-4e1a-8251-fdc868f83dbd"
  }
}
