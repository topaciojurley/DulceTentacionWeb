json.array!(@tipopostres) do |tipopostre|
  json.extract! tipopostre, :id, :nombre, :descripcion
  json.url tipopostre_url(tipopostre, format: :json)
end
