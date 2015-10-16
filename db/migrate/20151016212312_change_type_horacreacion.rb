class ChangeTypeHoracreacion < ActiveRecord::Migration
=begin
formato que quiero cambiar
=end
  def change
    change_table :procedures do |t|
      t.change :horacreacion, :string

    end
  end
=begin
formato actual
=end
  def down
    change_table :procedures do |t|
      t.change :horacreacion, :time
    end
  end
end
