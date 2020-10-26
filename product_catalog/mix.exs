defmodule ProductCatalog.MixProject do
  use Mix.Project

  def project do
    [
      app: :product_catalog,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      elixirc_paths: elixirc_paths(Mix.env()),
      deps: deps()
    ]
  end

  defp elixirc_paths(_), do: ["lib", "priv"]

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ProductCatalog.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sql, "~> 3.2"},
      {:postgrex, "~> 0.15"},
      {:jason, "~> 1.2"},
      {:scrivener_ecto, "~> 2.0"}
    ]
  end
end
