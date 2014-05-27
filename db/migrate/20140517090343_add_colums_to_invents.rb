class AddColumsToInvents < ActiveRecord::Migration
  def change
    add_column :invents, :producto_id, :integer
    add_column :invents, :cantidad, :integer
  end
end
