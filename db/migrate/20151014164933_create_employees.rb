class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
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
      t.string :codCOP
      t.references :position, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
