defmodule ProductCatalog.Product.Get do
  alias ProductCatalog.Repo
  alias ProductCatalog.Product

  import Ecto.Query

  def call(page) do
    Product
    |> order_by(:product_id)
    |> Repo.paginate(page: page, page_size: 10)
  end
end
