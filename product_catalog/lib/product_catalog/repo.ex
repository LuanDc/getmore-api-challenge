defmodule ProductCatalog.Repo do
  use Ecto.Repo,
    otp_app: :product_catalog,
    adapter: Ecto.Adapters.Postgres

  use Scrivener
end
