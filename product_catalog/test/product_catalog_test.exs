defmodule ProductCatalogTest do
  use ExUnit.Case
  doctest ProductCatalog

  test "greets the world" do
    assert ProductCatalog.hello() == :world
  end
end
