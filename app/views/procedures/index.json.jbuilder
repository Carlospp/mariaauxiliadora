json.array!(@procedures) do |procedure|
  json.extract! procedure, :id, :patient_id, :feccreacion, :horacreacion, :employee_id, :appointment, :grupo, :tratamiento, :medicamentos, :alergias, :hemorragias, :irradiaciones, :sinusitis, :respiratorias, :cardiopatias, :diabetes, :fiebre, :hepatitis, :hipertension, :otrasenfermedades, :cepillado, :hilo, :otros, :obsanamnesis, :temperatura, :pulso, :tension, :respiracion, :mandibula, :labios, :lengua, :paladar, :boca, :carrillos, :glandulas, :maxilares, :senosmaxilares, :masticadores, :nervioso, :vascular, :linfatico, :oclusion, :obsfisico, :abrasion, :placacalificada, :pulpar, :placablanda, :fluorosis, :manchas, :obsdental, :causaexterna, :finalidad, :dxprincipal
  json.url procedure_url(procedure, format: :json)
end
