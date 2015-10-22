class AddImageToProcedures < ActiveRecord::Migration
  def change
    add_attachment :procedures, :actual
    add_attachment :procedures, :final
    add_attachment :procedures, :odontograma
    add_attachment :procedures, :placa1
    add_attachment :procedures, :placa2
  end
end
