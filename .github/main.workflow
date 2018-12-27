workflow "Deploy on Push" {
  on = "push"
  resolves = ["Deploy to Azure Example"]
}

action "Deploy to Azure Example" {
  uses = "./.github/azdeploy"
  secrets = ["SERVICE_PASS"]
  env = {
    TENANT_ID = "0c2ebf14-f2c2-4520-81e2-471a3c80061a"
    SERVICE_PRINCIPAL = "http://ortherAzureAction"
    APPID = "ortherAzureAction"
  }
}
