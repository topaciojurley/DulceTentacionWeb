json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :apellido, :rut, :direccion, :correo, :fechanacimiento, :telefono
  json.url empleado_url(empleado, format: :json)
end
