json.array!(@postres) do |postre|
  json.extract! postre, :id, :nombre, :porcion, :precio, :tipopostre_id
  json.url postre_url(postre, format: :json)
end
