json.array!(@positions) do |position|
  json.extract! position, :id, :nombre, :descripcion, :sueldo
  json.url position_url(position, format: :json)
end
