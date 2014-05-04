class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :sku
      t.integer :umedida_id
      t.string :nombre
      t.integer :stock_minimo
      t.integer :stock_critico
      t.boolean :estado

      t.timestamps
    end
  end
end
