class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.references :patient, index: true, foreign_key: true
      t.date :feccreacion
      t.time :horacreacion
      t.references :employee, index: true, foreign_key: true
      t.string :appointment
      t.string :grupo
      t.string :tratamiento
      t.string :medicamentos
      t.string :alergias
      t.string :hemorragias
      t.string :irradiaciones
      t.string :sinusitis
      t.string :respiratorias
      t.string :cardiopatias
      t.string :diabetes
      t.string :fiebre
      t.string :hepatitis
      t.string :hipertension
      t.string :otrasenfermedades
      t.string :cepillado
      t.string :hilo
      t.string :otros
      t.text :obsanamnesis
      t.string :temperatura
      t.string :pulso
      t.string :tension
      t.string :respiracion
      t.string :mandibula
      t.string :labios
      t.string :lengua
      t.string :paladar
      t.string :boca
      t.string :carrillos
      t.string :glandulas
      t.string :maxilares
      t.string :senosmaxilares
      t.string :masticadores
      t.string :nervioso
      t.string :vascular
      t.string :linfatico
      t.string :oclusion
      t.text :obsfisico
      t.string :abrasion
      t.string :placacalificada
      t.string :pulpar
      t.string :placablanda
      t.string :fluorosis
      t.string :manchas
      t.string :obsdental
      t.string :causaexterna
      t.string :finalidad
      t.string :dxprincipal

      t.timestamps null: false
    end
  end
end
