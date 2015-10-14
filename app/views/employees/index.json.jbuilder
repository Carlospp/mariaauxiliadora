json.array!(@employees) do |employee|
  json.extract! employee, :id, :nombre, :apellido, :dni, :fecnac, :sexo, :telefono, :celular, :direccion, :email, :fecingreso, :estado, :codCOP, :position_id, :user_id
  json.url employee_url(employee, format: :json)
end
