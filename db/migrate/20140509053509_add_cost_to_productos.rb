class AddCostToProductos < ActiveRecord::Migration
  def change
    add_column :productos, :costo, :decimal
  end
end
