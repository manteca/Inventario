class CreateAlmacenajes < ActiveRecord::Migration
  def change
    create_table :almacenajes do |t|
      t.integer :bodega_id
      t.integer :producto_id
      t.integer :cantidad
    end
  end
end
