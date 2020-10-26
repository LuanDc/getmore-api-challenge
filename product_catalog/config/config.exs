import Config

config :product_catalog, ecto_repos: [ProductCatalog.Repo]

config :product_catalog, ProductCatalog.Repo,
  database: "product_catalog_dev",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"
