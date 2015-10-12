class CreateTreatments < ActiveRecord::Migration
  def change
    create_table :treatments do |t|
      t.string :nombre
      t.text :descripcion
      t.float :costo

      t.timestamps null: false
    end
  end
end
