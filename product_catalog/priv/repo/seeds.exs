alias ProductCatalog.Repo
alias ProductCatalog.Product

json_file = "#{__DIR__}/../../../products.json"

handle_key = fn key ->
  key
  |> Macro.underscore()
  |> String.to_atom()
end

with {:ok, body} <- File.read(json_file),
     {:ok, json} <- Jason.decode(body, keys: :strings) do
      converted_list =
        Enum.map(json, fn map ->
          for {key, value} <- map, into: %{}, do: IO.inspect {handle_key.(key), value}
        end)

      Repo.insert_all(Product, converted_list)
else
  err ->
      IO.inspect(err)
end
