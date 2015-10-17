class AddRolToUsers < ActiveRecord::Migration
  def change
    add_column :users, :rol, :string, default: "usuario"
    add_column :users, :name, :string
  end
end
