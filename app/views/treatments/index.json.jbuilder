json.array!(@treatments) do |treatment|
  json.extract! treatment, :id, :nombre, :descripcion, :costo
  json.url treatment_url(treatment, format: :json)
end
