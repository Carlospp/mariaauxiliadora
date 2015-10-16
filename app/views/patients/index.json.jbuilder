json.array!(@patients) do |patient|
  json.extract! patient, :id, :nombre, :apellido, :dni, :fecnac, :sexo, :telefono, :celular, :direccion, :email, :fecingreso, :estado
  json.url patient_url(patient, format: :json)
end
