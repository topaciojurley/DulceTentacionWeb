json.array!(@especialidads) do |especialidad|
  json.extract! especialidad, :id, :nombre, :detalle
  json.url especialidad_url(especialidad, format: :json)
end
