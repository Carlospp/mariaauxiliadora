class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :nombre
      t.string :apellido
      t.integer :dni
      t.date :fecnac
      t.string :sexo
      t.integer :telefono
      t.integer :celular
      t.text :direccion
      t.string :email
      t.date :fecingreso
      t.string :estado

      t.timestamps null: false
    end
  end
end
