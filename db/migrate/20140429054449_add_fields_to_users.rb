class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, :default => FALSE
    add_column :users, :username, :string
    add_column :users, :nombre, :string
    add_column :users, :apellido, :string
    add_column :users, :cel, :string
    add_column :users, :banned, :boolean, :default => FALSE
  end
end
