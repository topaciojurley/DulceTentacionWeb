json.array!(@empleado_especialidads) do |empleado_especialidad|
  json.extract! empleado_especialidad, :id, :empleado_id, :especialidad_id
  json.url empleado_especialidad_url(empleado_especialidad, format: :json)
end
