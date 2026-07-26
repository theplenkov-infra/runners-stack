component "demo" {
  source = "./modules/demo"

  inputs = {
    prefix = var.name_prefix
  }

  providers = {
    random = provider.random.this
  }
}
