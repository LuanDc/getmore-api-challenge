defmodule ProductCatalog.Product do
  use Ecto.Schema

  @primary_key {:product_id, :integer, []}
  schema "products" do
    field :product_category, :string
    field :product_name, :string
    field :product_stock, :boolean
    field :product_price, :string
    field :product_image, :string
  end
end
